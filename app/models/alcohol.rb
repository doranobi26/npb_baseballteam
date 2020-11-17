class Alcohol < ApplicationRecord

  has_many :pets
  has_many :impressions, dependent: :destroy
  belongs_to :user
  belongs_to :genre

  def peted_by?(user)
    pets.where(user_id: user.id).exists?
  end
end
