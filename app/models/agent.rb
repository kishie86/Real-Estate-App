class Agent < ApplicationRecord
    has_many :propertyshowings
    has_many :sellers, through: :propertyshowings
end