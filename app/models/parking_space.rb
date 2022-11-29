class ParkingSpace < ApplicationRecord
  belongs_to :garage
  enum status: { pending: 0, confirmed: 1, rejected: 2 }

end
