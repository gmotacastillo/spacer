class InvoiceSpace < ApplicationRecord
  belongs_to :invoices
  belongs_to :parking_spaces
end
