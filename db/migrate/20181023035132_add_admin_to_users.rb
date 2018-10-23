class AddAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_comun :users, :admin, :boolean, default: false
  end
end
