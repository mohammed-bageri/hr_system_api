# frozen_string_literal: true

# == Schema Information
#
# Table name: employee_statuses
#
#  id                   :bigint           not null, primary key
#  employee_id          :bigint           not null
#  job_id               :bigint           not null
#  department_id        :bigint           not null
#  salary_id            :bigint           not null
#  manager_id           :bigint           not null
#  start_date           :datetime
#  finish_date          :datetime
#  address_id           :bigint           not null
#  record_replaced_date :datetime
#  record_ended_date    :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class EmployeeStatus < ApplicationRecord
  belongs_to :employee, class_name: 'Employee', foreign_key: 'employee_id'
  belongs_to :job
  belongs_to :department
  belongs_to :salary
  belongs_to :manager, class_name: 'Employee', foreign_key: 'manager_id'
  belongs_to :address
end
