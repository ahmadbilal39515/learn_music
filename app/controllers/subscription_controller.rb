class SubscriptionController < ApplicationController
  def new
  end

  def create
    if current_user.is_pro == false
      price_id = "price_1PF2lnG8qLGvGfXbVTo1laxO"
      begin
        @stripe_session = Stripe::Checkout::Session.create({
          customer: current_user.customer_id,
          payment_method_types: ['card'],
          mode: 'subscription',
          line_items: [{
            price: price_id,
            quantity: 1,
          }],
          success_url: "#{course_dashboard_url}/",
        })
        redirect_to @stripe_session.url, allow_other_host: true
      rescue Stripe::StripeError => e
        Rails.logger.error e
        flash[:alert] = 'An error occurred while processing your request.'
        redirect_to root_path
      end
    else
      flash[:notice] = 'User has already subscribed.'
      redirect_to edit_user_registration_url
    end
  end

  def cancel
    if current_user.present?
      begin
        customer_subscriptions = Stripe::Subscription.list(customer: current_user.customer_id)
        unless customer_subscriptions.empty?
          current_user.update(is_pro: false, customer_id: nil)
          customer_subscriptions.each do |subscription|
            stripe_subscription = Stripe::Subscription.retrieve(subscription['id'])
            stripe_subscription.cancel
          end
          flash[:notice] = 'Your subscription has been canceled.'
        else
          flash[:notice] = 'You do not have an active subscription.'
        end
      rescue Stripe::StripeError => e
        Rails.logger.error("Stripe API Error: #{e.message}")
        flash[:alert] = 'An error occurred while canceling your subscription. Please try again later.'
      end
    else
      flash[:alert] = 'You need to sign in or sign up before continuing.'
      redirect_to root_path
      return
    end
    redirect_to edit_user_registration_url
  end

end