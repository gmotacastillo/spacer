class ParkingSpace < ApplicationRecord
  belongs_to :garage
  has_many :invoices, through: :invoice_spaces
  scope :unavailable, -> { where("")}

end
