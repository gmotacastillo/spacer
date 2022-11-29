class InvoiceSpace < ApplicationRecord
  has_many :invoices
  has_many :parking_spaces
end
