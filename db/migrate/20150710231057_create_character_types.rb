class CreateCharacterTypes < ActiveRecord::Migration
  def change
    create_table :character_types do |t|
    t.column :name, :string
    t.column :character_type_id, :integer

      t.timestamps null: false
    end
  end
end
