class Item < ApplicationRecord
  belongs_to :vendor
  validates :item_name, presence: true 
  validates :category, presence: true 
  validates :size, presence: true, length: { in: 1..3}
  validates :gender_specific, presence: true
  validates :price, presence: true 
  validates :quantity, presence: true, numericality: { only_integer: true }
  validates :availability, presence: true

end
