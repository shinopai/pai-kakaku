class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # relation
  has_many :likes
  has_many :items, through: :likes
  has_many :reviews
  has_many :rates, through: :reviews, source: :item
end
