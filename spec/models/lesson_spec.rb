require 'rails_helper'

RSpec.describe Lesson, type: :model do

  describe 'relationships' do
    it { should belong_to(:course_module) }
    it { should have_many(:documents) }
  end
end
