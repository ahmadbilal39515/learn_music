# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning

  def after_sign_in_path_for(resource)
    course_dashboard_path
  end
end
