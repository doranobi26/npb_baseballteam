class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :nices, dependent: :destroy
  belongs_to :birthplace
  belongs_to :sex
  belongs_to :prefecture
  belongs_to :booze

  attachment :profile_image

end
