# == Schema Information
#
# Table name: employees
#
#  id           :bigint           not null, primary key
#  name         :string
#  email        :string
#  hire_date    :datetime
#  education_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Employee < ApplicationRecord
  belongs_to :education
  has_many :employee_statuses, dependent: :destroy, inverse_of: :employee
  has_many :manager_employee_statuses, dependent: :destroy, inverse_of: :manager
end
