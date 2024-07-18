# == Schema Information
#
# Table name: educations
#
#  id         :bigint           not null, primary key
#  level      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Education < ApplicationRecord
  has_many :employees
end
