class Post < ApplicationRecord

  belongs_to :user
  belongs_to :team
  belongs_to :manager
  belongs_to :rival
  belongs_to :role
end
