require "test_helper"

class SalariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salary = salaries(:one)
  end

  test "should get index" do
    get salaries_url, as: :json
    assert_response :success
  end

  test "should create salary" do
    assert_difference("Salary.count") do
      post salaries_url, params: { salary: { amount: @salary.amount } }, as: :json
    end

    assert_response :created
  end

  test "should show salary" do
    get salary_url(@salary), as: :json
    assert_response :success
  end

  test "should update salary" do
    patch salary_url(@salary), params: { salary: { amount: @salary.amount } }, as: :json
    assert_response :success
  end

  test "should destroy salary" do
    assert_difference("Salary.count", -1) do
      delete salary_url(@salary), as: :json
    end

    assert_response :no_content
  end
end
