require "test_helper"

class DepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @department = departments(:one)
  end

  test "should get index" do
    get departments_url, as: :json
    assert_response :success
  end

  test "should create department" do
    assert_difference("Department.count") do
      post departments_url, params: { department: { name: @department.name } }, as: :json
    end

    assert_response :created
  end

  test "should show department" do
    get department_url(@department), as: :json
    assert_response :success
  end

  test "should update department" do
    patch department_url(@department), params: { department: { name: @department.name } }, as: :json
    assert_response :success
  end

  test "should destroy department" do
    assert_difference("Department.count", -1) do
      delete department_url(@department), as: :json
    end

    assert_response :no_content
  end
end
