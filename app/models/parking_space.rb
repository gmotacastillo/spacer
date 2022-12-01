class ParkingSpace < ApplicationRecord
  belongs_to :garage
  has_many :invoice_spaces, dependent: :destroy
  has_many :invoices, through: :invoice_spaces, dependent: :destroy
end
