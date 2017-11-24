class Equipment < ApplicationRecord
    has_many :relationship
    has_many :location, through: :relationship
end
