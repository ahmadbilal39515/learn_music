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
        redirect_to @stripe_session[:url], allow_other_host: true
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
end
