# == Schema Information
#
# Table name: salaries
#
#  id         :bigint           not null, primary key
#  amount     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Salary < ApplicationRecord
  has_many :employee_statuses
end
