class AddUserIdToClients < ActiveRecord::Migration[7.0]
  def change
    remove_reference :clients, :users, null: false, foreign_key: true
    add_reference :clients, :user, null: false, foreign_key: true

  end
end
