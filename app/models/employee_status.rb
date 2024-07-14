# frozen_string_literal: true

class EmployeeStatus < ApplicationRecord
  belongs_to :employee, class_name: 'Employee', foreign_key: 'employee_id'
  belongs_to :job
  belongs_to :department
  belongs_to :salary
  belongs_to :manager, class_name: 'Employee', foreign_key: 'manager_id'
  belongs_to :address
end
