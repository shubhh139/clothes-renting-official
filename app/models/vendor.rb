class Vendor < ApplicationRecord
  belongs_to :user
  has_many :items
  validates :vendorname, presence: true
  validates :gst_no, length: {maximum: 15}, presence: true
end
