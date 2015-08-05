class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.column  :character_id,  :integer
      t.column  :value,  :integer

      t.timestamps null: false
    end
  end
end
