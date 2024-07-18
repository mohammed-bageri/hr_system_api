# == Schema Information
#
# Table name: addresses
#
#  id         :bigint           not null, primary key
#  name       :string
#  city_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Address < ApplicationRecord
  belongs_to :city
  has_many :employee_statuses
end
