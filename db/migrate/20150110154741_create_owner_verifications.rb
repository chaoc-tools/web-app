class CreateOwnerVerifications < ActiveRecord::Migration
  def change
    create_table :owner_verifications do |t|
      t.string :ch_first_name
      t.string :ch_mi
      t.string :ch_last_name
      t.integer :ch_building_number

      t.timestamps
    end
  end
end
