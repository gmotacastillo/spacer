class Garage < ApplicationRecord
  belongs_to :user
  has_many :parking_spaces
  has_many :invoices, through: :parking_spaces
end
