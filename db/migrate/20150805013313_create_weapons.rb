class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.integer :damage
      t.string :item_type

      t.timestamps null: false
    end
  end
end
