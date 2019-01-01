class User < ApplicationRecord
  has_secure_password
  has_many :user_homes
  has_many :homes, through: :user_homes


  has_many :chores



  def format
    {user: self, homes: self.homes, user_homes: self.user_homes}
  end


end
