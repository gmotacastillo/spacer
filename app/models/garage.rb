class Garage < ApplicationRecord
  belongs_to :user
  has_many :parking_spaces, dependent: :destroy
end
