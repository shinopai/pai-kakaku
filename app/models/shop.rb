class Shop < ApplicationRecord
  # enum
  enum postage: { 無料: 0, 有料: 1 }
  enum indication: { 受注生産: 0, 在庫: 1 }

  # relation
  has_many :sales
  has_many :items, through: :sales
end
