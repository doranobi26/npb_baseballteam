class Alcohol < ApplicationRecord

  has_many :pets
  has_many :impressions, dependent: :destroy
  has_many :pictures, dependent: :destroy
  belongs_to :user
  belongs_to :genre

  accepts_attachments_for :pictures, attachment: :picture

  def peted_by?(user)
    pets.where(user_id: user.id).exists?
  end
end
