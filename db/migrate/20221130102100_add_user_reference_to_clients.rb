class AddUserReferenceToClients < ActiveRecord::Migration[7.0]
  def change
    add_reference :clients, :users, null: false, foreign_key: true

  end
end
