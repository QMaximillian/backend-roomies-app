class Chore < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :chore, optional: true
end
