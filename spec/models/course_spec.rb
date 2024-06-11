require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'relationships' do
    it { should have_many(:course_modules) }
  end
end
