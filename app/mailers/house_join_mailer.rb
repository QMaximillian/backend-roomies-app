class HouseJoinMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.house_join_mailer.join_house.subject
  #
  def join_house(invite_email)
    @invite_email = invite_email

    mail to: email_address, subject: "#{@invite_email.first_name} #{@invite_email.last_name} Has Added You To the House!"
  end
end
