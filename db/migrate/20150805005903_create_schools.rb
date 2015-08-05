class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, null:false
      t.integer :allied_id, null:false
      t.integer :opposed_id, null:false
      t.integer :neutral_id, null:false:W

      t.timestamps null: false
    end
  end
end
