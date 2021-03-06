class Relationship < ApplicationRecord
    belongs_to :location
    belongs_to :equipment
    validates :location_id, presence: true
    validates :equipment_id, presence: true
    validates :quantity, presence: true, length: { minimum: 1 }
    
    def self.create_equipment_in_location(equipment, locations)
        locations.each do |location|
            create(location_id: location.id, equipment_id: equipment.id, quantity: 0)
        end
    end
end
