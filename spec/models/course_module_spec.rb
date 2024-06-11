require 'rails_helper'

RSpec.describe CourseModule, type: :model do
  describe 'relationships' do
    it { should belong_to(:course) }
    it { should have_many(:lessons) }
  end
end
