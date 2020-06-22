class ProductReview < ApplicationRecord
  belongs_to :product
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5).to_a }, numericality: true
end
