# == Schema Information
#
# Table name: jobs
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Job < ApplicationRecord
  has_many :employee_statuses
end
