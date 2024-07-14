require "test_helper"

class EmployeeStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_status = employee_statuses(:one)
  end

  test "should get index" do
    get employee_statuses_url, as: :json
    assert_response :success
  end

  test "should create employee_status" do
    assert_difference("EmployeeStatus.count") do
      post employee_statuses_url, params: { employee_status: { address_id: @employee_status.address_id, department_id: @employee_status.department_id, employee_id: @employee_status.employee_id, finish_date: @employee_status.finish_date, job_id: @employee_status.job_id, manager_id: @employee_status.manager_id, record_ended_date: @employee_status.record_ended_date, record_replaced_date: @employee_status.record_replaced_date, salary_id: @employee_status.salary_id, start_date: @employee_status.start_date } }, as: :json
    end

    assert_response :created
  end

  test "should show employee_status" do
    get employee_status_url(@employee_status), as: :json
    assert_response :success
  end

  test "should update employee_status" do
    patch employee_status_url(@employee_status), params: { employee_status: { address_id: @employee_status.address_id, department_id: @employee_status.department_id, employee_id: @employee_status.employee_id, finish_date: @employee_status.finish_date, job_id: @employee_status.job_id, manager_id: @employee_status.manager_id, record_ended_date: @employee_status.record_ended_date, record_replaced_date: @employee_status.record_replaced_date, salary_id: @employee_status.salary_id, start_date: @employee_status.start_date } }, as: :json
    assert_response :success
  end

  test "should destroy employee_status" do
    assert_difference("EmployeeStatus.count", -1) do
      delete employee_status_url(@employee_status), as: :json
    end

    assert_response :no_content
  end
end
