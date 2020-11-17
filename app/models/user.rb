class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :alcohols
  has_many :comments, dependent: :destroy
  has_many :impressions, dependent: :destroy
  has_many :nices, dependent: :destroy
  has_many :user_rooms
  has_many :chats
  has_many :pets
  belongs_to :birthplace
  belongs_to :sex
  belongs_to :prefecture
  belongs_to :booze
  belongs_to :team
  belongs_to :manager
  belongs_to :rival
  belongs_to :favorite
  belongs_to :sake

  attachment :profile_image



end
