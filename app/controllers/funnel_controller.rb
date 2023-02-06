class FunnelController < ApplicationController
  def index; end


  def email_squeeze
    render layout: 'funnel'
  end

  def realmajik
    render layout: 'one_page'
  end
end
