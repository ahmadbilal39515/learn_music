class SubscriptionController < ApplicationController
  def new
  end

  def create
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
        success_url: "#{request.base_url}/",
      })
      redirect_to @stripe_session[:url], allow_other_host: true
    rescue Stripe::StripeError => e
        Rails.logger.error e
    end

  end
end
