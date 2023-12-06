class Animal < ApplicationRecord
    has_many :sightings
    validates :common_name, :scientific_binomial, presence: true
    validates :common_name, :scientific_binomial, uniqueness: true
end
