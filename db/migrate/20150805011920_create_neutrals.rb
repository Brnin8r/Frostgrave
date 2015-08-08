class CreateNeutrals < ActiveRecord::Migration
  def change
    create_table :neutrals do |t|
      t.integer :school_id, null: false
      t.integer :neutral_id, null: false

      t.timestamps null: false
    end
  end
end
