class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :reflection
  validates_uniqueness_of :reflection_id, scope: :user_id 
end
