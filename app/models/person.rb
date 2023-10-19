# frozen_string_literal: true

# Person Class
class Person < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def cool_stuff
    ''
  end
end
