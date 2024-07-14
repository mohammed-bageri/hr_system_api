class State < ApplicationRecord
  belongs_to :location
  has_many :cities
end
