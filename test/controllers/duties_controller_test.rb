require 'test_helper'

class DutiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duty = duties(:one)
  end

  test "should get index" do
    get duties_url, as: :json
    assert_response :success
  end

  test "should create duty" do
    assert_difference('Duty.count') do
      post duties_url, params: { duty: { home_id: @duty.home_id, user_id: @duty.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show duty" do
    get duty_url(@duty), as: :json
    assert_response :success
  end

  test "should update duty" do
    patch duty_url(@duty), params: { duty: { home_id: @duty.home_id, user_id: @duty.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy duty" do
    assert_difference('Duty.count', -1) do
      delete duty_url(@duty), as: :json
    end

    assert_response 204
  end
end
