class CreateProxyVotesCollected < ActiveRecord::Migration
  def change
    create_table :proxy_votes_collected do |t|
      t.integer :annual_meeting_id
      t.integer :building_id
      t.integer :user_id
      t.integer :votes_collected

      t.timestamps
    end
  end
end
