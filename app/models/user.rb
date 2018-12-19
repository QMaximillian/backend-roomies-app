class User < ApplicationRecord
  has_many :user_homes
  has_many :users, through: :user_homes
  has_many :duties
  
  def format
    {homes: self.homes, duties: self.duties}
  end
end
