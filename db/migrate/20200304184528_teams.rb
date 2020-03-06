class Teams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :city
      t.string :teamName
      t.integer :user_id
    end
  end
end
