class Reflection < ApplicationRecord

  belongs_to :user, optional: true
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
