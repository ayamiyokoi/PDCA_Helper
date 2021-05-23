class User < ApplicationRecord
  has_many :reflectons, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
=======
   attachment :profile_image
>>>>>>> edit3
  mount_uploader :image, ImageUploader

end
