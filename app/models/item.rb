class Item < ApplicationRecord
  # relation
  belongs_to :category
  belongs_to :maker
  has_many :sales
  has_many :shops, through: :sales
  has_many :likes
  has_many :users, through: :likes
end
