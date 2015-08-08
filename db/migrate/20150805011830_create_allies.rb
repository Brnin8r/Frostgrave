class CreateAllies < ActiveRecord::Migration
  def change
    create_table :allies do |t|
      t.integer :school_id, null: false
      t.integer :ally_id, null: false

      t.timestamps null: false
    end
  end
end
