class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.column :character_type_id, :integer
      t.column :school_id, :integer
      t.column :name, :string
      t.timestamps null: false
    end
  end
end
