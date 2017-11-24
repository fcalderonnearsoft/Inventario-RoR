class Location < ApplicationRecord
    has_many :relationship
    has_many :equipment, through: :relationship

end
