class Invoice < ApplicationRecord
  belongs_to :client
  has_many :invoice_spaces
  has_many :parking_spaces, through: :invoice_spaces
  has_many :garages, through: :parking_spaces
end
