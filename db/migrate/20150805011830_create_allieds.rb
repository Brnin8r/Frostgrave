class CreateAllieds < ActiveRecord::Migration
  def change
    create_table :allieds do |t|
      t.integer :school_id, null: false
      t.integer :allied_school_id, null: false

      t.timestamps null: false
    end
  end
end
