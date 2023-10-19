# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Person, type: :model do
  it 'should have a middle name' do
    person = FactoryBot.build(:person, first_name: 'John', last_name: 'Smith')

    expect(person.full_name).to eq("#{person.first_name} #{person.last_name}")
  end
end
