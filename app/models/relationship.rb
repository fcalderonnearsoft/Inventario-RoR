class Relationship < ApplicationRecord
    belongs_to :location
    belongs_to :equipment
    validates :location_id, presence: true
    validates :equipment_id, presence: true
    
    def self.create_equipment_in_location(equipment, locations)
        locations.each do |location|
            self.create(:location_id => location.id, :equipment_id => equipment.id, :quantity => 0)
        end
    end
end
