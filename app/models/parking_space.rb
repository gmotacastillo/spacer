class ParkingSpace < ApplicationRecord
  belongs_to :garage
  has_many :invoice_spaces
  has_many :invoices, through: :invoice_spaces

  def unavailable?(date)
    self.invoices.any? {|invoice| invoice.start_date < date && invoice.end_date > date }
  end
end
