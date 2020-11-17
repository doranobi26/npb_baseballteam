class Post < ApplicationRecord

  has_many :nices, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :role
  belongs_to :affiliation

  def niced_by?(user)
    nices.where(user_id: user.id).exists?
  end
end
