class Client < ApplicationRecord
  has_many :invoices
  has_many :invoice_spaces, through: :invoices
  has_many :parking_spaces, through: :invoice_spaces
  belongs_to :user
end
