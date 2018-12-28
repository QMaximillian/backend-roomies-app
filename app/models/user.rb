class User < ApplicationRecord
  has_secure_password
  has_many :user_homes
  has_many :homes, through: :user_homes
  # has_many :duties


  def checkUserHouseInvitations
    byebug
    x = UserHome.all.find_by(email: self.email)

  end

  def format
    {homes: self.homes, duties: self.duties}
  end


end
