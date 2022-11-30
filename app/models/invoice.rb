class Invoice < ApplicationRecord
  belongs_to :client
  has_many :parking_spaces, through: :invoice_spaces
end
