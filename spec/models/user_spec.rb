# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#register_customer' do
    it 'creates a Stripe customer and updates the user with the customer ID' do
      user = create(:user)
      customer_id = 'cus_123456789'
      allow(Stripe::Customer).to receive(:create).and_return(double(id: customer_id))
      user.send(:register_customer)
      expect(user.customer_id).to eq(customer_id)
    end
  end
end
