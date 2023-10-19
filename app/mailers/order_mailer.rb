# frozen_string_literal: true

# Order Mailer
class OrderMailer < ApplicationMailer
  def thing
    @person = Person.new

    mail to: @person.email
  end

  def another_one; end
end
