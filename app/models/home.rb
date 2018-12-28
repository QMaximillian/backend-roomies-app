class Home < ApplicationRecord
  # require 'securerandom'

  has_many :user_homes
  has_many :users, through: :user_homes
  # has_many :duties

  # def random_generator
  #   self.home_code = SecureRandom.hex(10)
  # end


end
