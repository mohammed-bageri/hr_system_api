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
require "test_helper"

class EmployeeStatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
