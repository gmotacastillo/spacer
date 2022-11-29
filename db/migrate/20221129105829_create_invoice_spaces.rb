class CreateInvoiceSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :invoice_spaces do |t|
      t.references :parking_space, null: false, foreign_key: true
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
