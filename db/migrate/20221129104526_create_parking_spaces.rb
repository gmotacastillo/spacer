class CreateParkingSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :parking_spaces do |t|
      t.integer :custom_size
      t.integer :custom_price
      t.string :title
      t.references :garage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
