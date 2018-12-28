class UserHome < ApplicationRecord
  belongs_to :user
  belongs_to :home

  def find_home_by_home_code
    Home.all.select do |home|
      self.home_code == home.home_code
    end
  end
end
