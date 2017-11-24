class Equipment < ApplicationRecord
    has_many :relationship, foreign_key: "equipment_id"
    has_many :location, through: :relationship
end
