class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.date :start_date
      t.date :end_date
      t.float :price
      t.integer :payment_confirmed
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
