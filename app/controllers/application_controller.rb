# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning
end
