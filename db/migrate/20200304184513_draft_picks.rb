class DraftPicks < ActiveRecord::Migration[5.2]
  def change
    create_table :draft_picks do |t|
      t.integer :team_id
      t.integer :player_id
    end
  end
end
