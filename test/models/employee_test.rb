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
require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
