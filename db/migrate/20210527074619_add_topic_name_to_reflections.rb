class AddTopicNameToReflections < ActiveRecord::Migration[5.2]
  def change
    add_column :reflections, :topic_name, :string
  end
end
