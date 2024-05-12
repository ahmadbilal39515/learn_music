# frozen_string_literal: true

# User Class
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def courses
    if is_pro
      @courses ||= Course.all
    else
      @courses ||= Course.where(is_pro: false)
    end
  end
end
