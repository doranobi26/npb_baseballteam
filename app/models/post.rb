class Post < ApplicationRecord

  has_many :nices, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
  belongs_to :user
  belongs_to :role
  belongs_to :affiliation

  accepts_attachments_for :images, attachment: :image

  def niced_by?(user)
    nices.where(user_id: user.id).exists?
  end
end
