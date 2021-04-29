class Product < ApplicationRecord

  validates :title, presence: true

  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories, dependent: :destroy
end
