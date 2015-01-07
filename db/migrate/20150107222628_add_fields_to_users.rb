class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :chaoc_first, :string
    add_column :users, :chaoc_mi, :string
    add_column :users, :chaoc_last, :string
  end
end
