class ParkingSpace < ApplicationRecord
  belongs_to :garage
  has_many :invoice_spaces
  has_many :invoices, through: :invoice_spaces
end
