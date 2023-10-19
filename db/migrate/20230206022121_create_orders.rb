# frozen_string_literal: true

# Create Orders
class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders, &:timestamps
  end
end
