class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|

      t.column  :character_id,  :integer
      t.column  :value,  :integer
      t.timestamps null: false
    end
  end
end
