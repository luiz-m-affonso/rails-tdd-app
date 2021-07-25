require 'rails_helper'

RSpec.describe Product, type: :model do
  describe :validations do
    subject(:category) { create(:category) }
    subject(:product) { create(:product, category_id: category.id) }
    describe :attributes do
      context 'valid with description, price and category' do
        it { is_expected.to be_valid }
      end

      context 'invalid without description' do
        subject(:product) { build(:product, description: '') }
        it { is_expected.not_to be_valid }
      end

      context 'invalid without category' do
        subject(:product) { build(:product, category_id: '') }
        it { is_expected.not_to be_valid }
      end

      context 'invalid without price' do
        subject(:product) { build(:product, price: '') }
        it { is_expected.not_to be_valid }
      end
    end
  end
end
