class Sale < ApplicationRecord
  # relation
  belongs_to :item
  belongs_to :shop

  # validation
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/ }
  validates :shop_id, uniqueness: { scope: :item_id }
end
