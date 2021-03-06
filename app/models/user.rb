class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image
  has_many :reflections, dependent: :destroy
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy
end
