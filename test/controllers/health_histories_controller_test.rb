require "test_helper"

class HealthHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_history = health_histories(:one)
  end

  test "should get index" do
    get health_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_health_history_url
    assert_response :success
  end

  test "should create health_history" do
    assert_difference('HealthHistory.count') do
      post health_histories_url, params: { health_history: { relation: @health_history.relation } }
    end

    assert_redirected_to health_history_url(HealthHistory.last)
  end

  test "should show health_history" do
    get health_history_url(@health_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_history_url(@health_history)
    assert_response :success
  end

  test "should update health_history" do
    patch health_history_url(@health_history), params: { health_history: { relation: @health_history.relation } }
    assert_redirected_to health_history_url(@health_history)
  end

  test "should destroy health_history" do
    assert_difference('HealthHistory.count', -1) do
      delete health_history_url(@health_history)
    end

    assert_redirected_to health_histories_url
  end
end
