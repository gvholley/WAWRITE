class Product < ApplicationRecord
  belongs_to :category
  monetize :price_cents
  acts_as_taggable_on :tags
end
