class Employee < ApplicationRecord
  belongs_to :education
  has_many :employee_statuses, dependent: :destroy, inverse_of: :employee
  has_many :manager_employee_statuses, dependent: :destroy, inverse_of: :manager
end
