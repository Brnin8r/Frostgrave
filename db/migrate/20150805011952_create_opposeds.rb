class CreateOpposeds < ActiveRecord::Migration
  def change
    create_table :opposeds do |t|
      t.integer :school_id, null: false
      t.integer :opposed_id, null: false

      t.timestamps null: false
    end
  end
end
