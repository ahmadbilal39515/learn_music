# frozen_string_literal: true

# User Class
class User < ApplicationRecord
  after_create :register_customer
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def register_customer
    request = Stripe::Customer.create({email: email})
    update(customer_id: request.id)
  end

end