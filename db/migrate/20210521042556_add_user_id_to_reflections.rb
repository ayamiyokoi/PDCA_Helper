class AddUserIdToReflections < ActiveRecord::Migration[5.2]
  def change
    add_column :reflections, :user_id, :string
  end
end
