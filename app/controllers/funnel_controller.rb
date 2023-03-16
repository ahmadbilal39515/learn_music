# frozen_string_literal: true

class FunnelController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create_checkout_session]
  YOUR_DOMAIN = 'http://localhost:3000'

  def index; end

  # 1. Get all views to be in a workable state
  def email_squeeze
    @person = Person.new
    render layout: 'funnel'
  end

  # 2. Get
  def email_squeeze_submit
    @person = Person.new(email_squeeze_params)

    if @person.save
      @render_file = true
      flash.now[:notice] = "Thanks for downloading Turquoise Rings!"
    else
      flash.now[:error] = @person.errors.full_messages[0]
    end

    render 'email_squeeze', layout: 'funnel'
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
    session = Stripe::Checkout::Session.create(strip_params)
    redirect_to session.url, allow_other_host: true
  end

  def strip_params
    {
      line_items: [{
                     # Provide the exact Price ID (e.g. pr_1234) of the product you want to sell
                     price: 'price_1MUgtXDCFdRL7Y14Gdt2Vvie',
                     quantity: 1
                   }],
      mode: 'payment',
      success_url: "#{YOUR_DOMAIN}/reallymagical?success=true",
      cancel_url: "#{YOUR_DOMAIN}/lessmagical?success=false"
    }
  end



  private

  def email_squeeze_params
    params.require(:person).permit(:email, :first_name, :last_name)
  end
end
