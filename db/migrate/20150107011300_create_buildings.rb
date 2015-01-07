class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.integer :number
      t.string :street
      t.string :campus

      t.timestamps
    end
  end
end
