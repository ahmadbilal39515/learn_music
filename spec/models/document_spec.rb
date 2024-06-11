require 'rails_helper'

RSpec.describe Document, type: :model do

  describe 'relationships' do
    it { should belong_to(:lesson) }
  end
end
