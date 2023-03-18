# frozen_string_literal: true

class FunnelController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create_checkout_session]

  ##########################
  #  Turquoise Rings Funnel
  ##########################
  def email_squeeze
    @person = Person.new
    render layout: 'funnel'
  end

  def email_squeeze_submit
    @person = Person.new(person_params)

    if @person.save
      @render_file = true
      flash.now[:notice] = "Thanks for downloading Turquoise Rings! Click the download button below!"
    else
      flash.now[:error] = @person.errors.full_messages[0]
    end

    render 'email_squeeze', layout: 'funnel'
  end

  ##########################
  #  Real Majik Funnel
  ##########################
  def real_majik
    render 'real_majik', layout: 'funnel'
  end

  def create_checkout_session
    # content_type 'application/json'
    @person = Person.new(person_params)

    if @person.save
      # This is your test secret API key.
      Stripe.api_key = 'sk_test_pEuTbjB5ln27gXH2lV9UG3xT'
      session = Stripe::Checkout::Session.create(strip_params)
      redirect_to session.url, allow_other_host: true
    else
      flash.now[:error] = @person.errors.full_messages[0]
      render 'real_majik', layout: 'funnel'
    end
  end

  def real_majik_purchased
    @render_file = true
    flash.now[:notice] = "Thanks for purchasing Real Majik! Click the download button below!"
    render 'real_majik', layout: 'funnel'
  end

  private
  def strip_params
    {
      line_items: [{ price: 'price_1Mn1b1DCFdRL7Y14w4tDhn2i', quantity: 1 }],
      mode: 'payment',
      success_url: "#{request.base_url}/real_majik_purchased",
      cancel_url: "#{request.base_url}/real_majik"
    }
  end

  def person_params
    params.require(:person).permit(:email, :first_name, :last_name)
  end
end
