class RemoveUserIdFromReflections < ActiveRecord::Migration[5.2]
  def change
    remove_column :reflections, :user_id, :string
  end
end
