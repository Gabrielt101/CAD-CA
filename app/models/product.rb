class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_one_attached :image
  has_many :carts, dependent: :destroy
end
