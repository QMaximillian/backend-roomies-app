class User < ApplicationRecord
  has_many :duties
  has_many :homes, through: :duties

  def format
    {homes: self.homes, duties: self.duties}
  end
end
