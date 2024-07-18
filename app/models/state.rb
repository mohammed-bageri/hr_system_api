# == Schema Information
#
# Table name: states
#
#  id          :bigint           not null, primary key
#  name        :string
#  location_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class State < ApplicationRecord
  belongs_to :location
  has_many :cities
end
