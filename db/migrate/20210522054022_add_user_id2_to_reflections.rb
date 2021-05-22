class AddUserId2ToReflections < ActiveRecord::Migration[5.2]
  def change
    add_column :reflections, :user_id, :integer
  end
end
