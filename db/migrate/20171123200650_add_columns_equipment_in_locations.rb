class AddColumnsEquipmentInLocations < ActiveRecord::Migration[5.1]
  def change
        add_column :equipment_in_locations, :equipment_id, :integer
        add_column :equipment_in_locations, :location_id, :integer
  end
end
