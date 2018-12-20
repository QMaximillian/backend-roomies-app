require 'test_helper'

class HouseJoinMailerTest < ActionMailer::TestCase
  test "join_house" do
    mail = HouseJoinMailer.join_house
    assert_equal "Join house", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
