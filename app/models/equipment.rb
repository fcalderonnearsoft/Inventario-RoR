class Equipment < ApplicationRecord
    has_many :equipment_in_locations
    has_many :locations, through :equipment_in_locations
end
