class InvoiceSpace < ApplicationRecord
  belongs_to :invoice
  belongs_to :parking_space
end
