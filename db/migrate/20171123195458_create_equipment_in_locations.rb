class CreateEquipmentInLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment_in_locations do |t|
      t.integer :quantity
      t.timestamps
    end
  end
end
