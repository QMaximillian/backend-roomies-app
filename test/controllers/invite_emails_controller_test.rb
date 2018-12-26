require 'test_helper'

class InviteEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invite_email = invite_emails(:one)
  end

  test "should get index" do
    get invite_emails_url, as: :json
    assert_response :success
  end

  test "should create invite_email" do
    assert_difference('InviteEmail.count') do
      post invite_emails_url, params: { invite_email: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show invite_email" do
    get invite_email_url(@invite_email), as: :json
    assert_response :success
  end

  test "should update invite_email" do
    patch invite_email_url(@invite_email), params: { invite_email: {  } }, as: :json
    assert_response 200
  end

  test "should destroy invite_email" do
    assert_difference('InviteEmail.count', -1) do
      delete invite_email_url(@invite_email), as: :json
    end

    assert_response 204
  end
end
