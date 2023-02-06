# frozen_string_literal: true

class FunnelController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create_checkout_session]
  YOUR_DOMAIN = 'http://localhost:3000'

  def index; end

  #1. Get all views to be in a workable state
  def email_squeeze
    render layout: 'funnel'
  end

  # 2. Get 
  def email_squeeze_submit

  end

  def real_majik
    render 'real_majik', layout: 'funnel'
  end

  def real_majik_purchased

  end

  def create_checkout_session
    # content_type 'application/json'

    # This is your test secret API key.
    Stripe.api_key = 'sk_test_pEuTbjB5ln27gXH2lV9UG3xT'

    session = Stripe::Checkout::Session.create({
                                                 line_items: [{
                                                   # Provide the exact Price ID (e.g. pr_1234) of the product you want to sell
                                                   price: 'price_1MUgtXDCFdRL7Y14Gdt2Vvie',
                                                   quantity: 1
                                                 }],
                                                 mode: 'payment',
                                                 success_url: "#{YOUR_DOMAIN}/real_majik_purchased",
                                                 cancel_url: "#{YOUR_DOMAIN}/realmagic"
                                               })

    redirect_to session.url, allow_other_host: true
  end
end
