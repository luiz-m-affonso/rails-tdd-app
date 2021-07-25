require 'rails_helper'

RSpec.describe Category, type: :model do
  subject(:category) { create(:category) }
  describe :validations do
    it { is_expected.to validate_presence_of(:description) }
  end

  describe :attributes do
    context 'valid category with description' do
      it { is_expected.to be_valid }
    end

    context 'invalid category without description' do
      subject(:category) { build(:category, description: '')}
      it { is_expected.not_to be_valid }
    end
  end
end
