class Home < ApplicationRecord
  require 'securerandom'

  def random_generator
    self.home_code = SecureRandom.hex(10)
  end

  has_many :user_homes
  has_many :homes, through: :user_homes
  has_many :duties
end
