class Category < ApplicationRecord
  # validation
  validates :name, presence: true, length: { maximum: 30 }
end
