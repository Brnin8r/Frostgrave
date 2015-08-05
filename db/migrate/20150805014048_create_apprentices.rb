class CreateApprentices < ActiveRecord::Migration
  def change
    create_table :apprentices do |t|
      t.string :name
      t.integer :move
      t.integer :fight
      t.integer :shoot
      t.integer :armor
      t.integer :will
      t.integer :health
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
