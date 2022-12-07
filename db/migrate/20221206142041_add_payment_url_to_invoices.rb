class AddPaymentUrlToInvoices < ActiveRecord::Migration[7.0]
  def change
    add_column :invoices, :payment_url, :string
  end
end
