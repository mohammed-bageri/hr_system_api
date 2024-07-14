require "test_helper"

class StatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state = states(:one)
  end

  test "should get index" do
    get states_url, as: :json
    assert_response :success
  end

  test "should create state" do
    assert_difference("State.count") do
      post states_url, params: { state: { loaction_id: @state.loaction_id, name: @state.name } }, as: :json
    end

    assert_response :created
  end

  test "should show state" do
    get state_url(@state), as: :json
    assert_response :success
  end

  test "should update state" do
    patch state_url(@state), params: { state: { loaction_id: @state.loaction_id, name: @state.name } }, as: :json
    assert_response :success
  end

  test "should destroy state" do
    assert_difference("State.count", -1) do
      delete state_url(@state), as: :json
    end

    assert_response :no_content
  end
end
