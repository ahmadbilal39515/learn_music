# frozen_string_literal: true

# Funnel Controller
class FunnelController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create_checkout_session]
  TR_GREETING_VIDEO_ID = 'jla_sNw568M'
  TR_THANK_YOU_VIDEO_ID = 'XbLHY4mbhGc'

  RM_GREETING_VIDEO_ID = 'fxLeurQaf0g'
  RM_THANK_YOU_VIDEO_ID = 'q2kTh3257A8'
  ##########################
  #  Turquoise Rings Funnel
  ##########################
  def email_squeeze
    @person = Person.new
    @video_id = TR_GREETING_VIDEO_ID
    render layout: 'funnel'
  end

  def email_squeeze_submit
    @person = Person.new(person_params)

    if @person.save
      @render_file = true
      @video_id = TR_THANK_YOU_VIDEO_ID
      flash.now[:notice] = 'Thanks for downloading Turquoise Rings! Click the download button below!'
    else
      flash.now[:error] = @person.errors.full_messages[0]
    end

    render 'email_squeeze', layout: 'funnel'
  end

  ##########################
  #  Real Majik Funnel
  ##########################
  def real_majik
    @video_id = RM_GREETING_VIDEO_ID
    @person = Person.new

    render 'video_landding_page', layout: 'funnel'
  end

  def create_checkout_session
    Stripe.api_key = Rails.application.config.stripe_api_key
    session = Stripe::Checkout::Session.create(strip_params)
    redirect_to session.url, allow_other_host: true

    # # content_type 'application/json'
    # @person = existing_or_new_person
    #
    # if @person.save
    #   # This is your test secret API key.
    #   Stripe.api_key = Rails.application.config.stripe_api_key
    #   session = Stripe::Checkout::Session.create(strip_params)
    #   redirect_to session.url, allow_other_host: true
    # else
    #   flash.now[:error] = @person.errors.full_messages[0]
    #   render 'real_majik', layout: 'funnel'
    # end
  end

  def real_majik_purchased
    @video_id = RM_THANK_YOU_VIDEO_ID
    @render_file = true
    flash.now[:notice] = 'Thanks for purchasing Real Majik! Click the download button below!'

    render 'real_majik', layout: 'funnel'
  end

  def existing_or_new_person
    person = Person.find_by(email: person_params[:email])
    return person if person.present?

    Person.new(person_params)
  end

  private

  def strip_params
    {
      line_items: [{ price: Rails.application.config.stripe_price_id, quantity: 1 }],
      mode: 'payment',
      success_url: 'https://drive.google.com/drive/folders/1JFJmS1U9IR_OSn_CR1tn4iqdxmTnZCku?usp=sharing',
      cancel_url: request.base_url.to_s
    }
  end

  def person_params
    params.require(:person).permit(:email, :first_name, :last_name)
  end
end
