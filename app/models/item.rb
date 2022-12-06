class Item < ApplicationRecord
  # relation
  belongs_to :category
  belongs_to :maker
  has_many :sales
  has_many :shops, through: :sales
  has_many :likes
  has_many :users, through: :likes
  has_many :reviews
  has_many :rates, through: :reviews, source: :user
end
