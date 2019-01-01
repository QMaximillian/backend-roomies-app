class Home < ApplicationRecord
  # require 'securerandom'

  has_many :user_homes
  has_many :users, through: :user_homes
  has_many :chores
  has_many :tasks

  def format
    {home: self, tasks: self.tasks}
  end
  # has_many :duties

  # def random_generator
  #   self.home_code = SecureRandom.hex(10)
  # end


end
