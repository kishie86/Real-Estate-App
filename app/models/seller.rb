class Seller < ApplicationRecord
    has_many :propertyshowings
    has_many :agents, through: :propertyshowings
end