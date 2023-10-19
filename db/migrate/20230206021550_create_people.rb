# frozen_string_literal: true

# Create People
class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people, &:timestamps
  end
end
