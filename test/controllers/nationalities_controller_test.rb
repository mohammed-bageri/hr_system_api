require "test_helper"

class NationalitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nationality = nationalities(:one)
  end

  test "should get index" do
    get nationalities_url, as: :json
    assert_response :success
  end

  test "should create nationality" do
    assert_difference("Nationality.count") do
      post nationalities_url, params: { nationality: { name: @nationality.name } }, as: :json
    end

    assert_response :created
  end

  test "should show nationality" do
    get nationality_url(@nationality), as: :json
    assert_response :success
  end

  test "should update nationality" do
    patch nationality_url(@nationality), params: { nationality: { name: @nationality.name } }, as: :json
    assert_response :success
  end

  test "should destroy nationality" do
    assert_difference("Nationality.count", -1) do
      delete nationality_url(@nationality), as: :json
    end

    assert_response :no_content
  end
end
