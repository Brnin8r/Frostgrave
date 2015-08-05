class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.integer :name, null:false
      t.integer :school_id, null:false
      t.string :range, null: false
      t.text :description
      t.integer :casting_value, null:false

      t.timestamps null: false
    end
  end
end
