class RemovePriceColumnAndAddPriceFloatToGarages < ActiveRecord::Migration[7.0]
  def change
    remove_column :garages, :price, :integer
    add_column :garages, :price, :float
  end
end
