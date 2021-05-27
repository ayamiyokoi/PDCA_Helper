class Reflection < ApplicationRecord

  belongs_to :user, optional: true
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy
end
