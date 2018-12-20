class HouseJoinMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.house_join_mailer.join_house.subject
  #
  def join_house(user, email_address)
    @user = user

    mail to: email_address, subject: "#{@user.first_name} Has Added You To the House!"
  end
end
