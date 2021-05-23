class AddImage2ToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image, :string
  end
end
