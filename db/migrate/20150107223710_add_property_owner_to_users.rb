class AddPropertyOwnerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :property_owner, :boolean, :default => false
  end
end
