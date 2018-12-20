# Preview all emails at http://localhost:3000/rails/mailers/house_join_mailer
class HouseJoinMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/house_join_mailer/join_house
  def join_house

    HouseJoinMailer.join_house(User.first, "quinnlashinskydeveloper@gmail.com")
  end

end
