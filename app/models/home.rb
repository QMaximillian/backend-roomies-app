class Home < ApplicationRecord
  has_many :user_homes
  has_many :homes, through: :user_homes
  has_many :duties
end
