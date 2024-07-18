# == Schema Information
#
# Table name: nationalities
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Nationality < ApplicationRecord
  has_many :employees
end
