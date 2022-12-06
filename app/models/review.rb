class Review < ApplicationRecord
  # relation
  belongs_to :user
  belongs_to :item

  # validation
  validates :title,
            presence: true,
            length: { maximum: 50 }
  validates :body,
            presence: true,
            length: { maximum: 300 }
  validates :rate,
             presence: true,
             numericality: {
             less_than_or_equal_to: 5,
             greater_than_or_equal_to: 1}
  validates :user_id, uniqueness: { scope: :item_id }
end
