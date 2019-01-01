require 'test_helper'

class UserChoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_chore = user_chores(:one)
  end

  test "should get index" do
    get user_chores_url, as: :json
    assert_response :success
  end

  test "should create user_chore" do
    assert_difference('UserChore.count') do
      post user_chores_url, params: { user_chore: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show user_chore" do
    get user_chore_url(@user_chore), as: :json
    assert_response :success
  end

  test "should update user_chore" do
    patch user_chore_url(@user_chore), params: { user_chore: {  } }, as: :json
    assert_response 200
  end

  test "should destroy user_chore" do
    assert_difference('UserChore.count', -1) do
      delete user_chore_url(@user_chore), as: :json
    end

    assert_response 204
  end
end
