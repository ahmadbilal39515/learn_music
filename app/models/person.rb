# frozen_string_literal: true

class Person < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true


  def full_name
    self.first_name + ' ' + self.last_name
  end

  def cool_stuff
    ''
  end

end
