class Product < ApplicationRecord
  belongs_to :category

  validates :description, :price, :category_id, presence: true
end
