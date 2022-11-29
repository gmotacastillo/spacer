class CreateGarages < ActiveRecord::Migration[7.0]
  def change
    create_table :garages do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.integer :average_size
      t.string :description
      t.integer :capacity
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
