class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :equipment_id
      t.integer :location_id
      t.integer :quantity

      t.timestamps
    end
    add_index :relationships, :equipment_id
    add_index :relationships, :location_id
    add_index :relationships, [:location_id, :equipment_id], unique: true
  end
end
