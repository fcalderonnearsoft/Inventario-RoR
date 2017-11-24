class Location < ApplicationRecord
    has_many :relationship, foreign_key: "location_id"
    has_many :equipment, through: :relationship

end
