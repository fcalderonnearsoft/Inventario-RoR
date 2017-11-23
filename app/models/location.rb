class Location < ApplicationRecord
    has_many :equipment_in_locations
    has_many :equipments, through :equipment_in_locations
end
