class Client < ApplicationRecord
  #block below is for the search function
  include PgSearch::Model
  pg_search_scope :search_by_last_name_first_name_company,
  against: [ :first_name, :last_name, :company],
  using: {
    tsearch: { prefix: true }
  }
  has_many :invoices, dependent: :destroy
  has_many :invoice_spaces, through: :invoices, dependent: :destroy
  has_many :parking_spaces, through: :invoice_spaces, dependent: :destroy
  belongs_to :user
end
