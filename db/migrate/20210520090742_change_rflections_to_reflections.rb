class ChangeRflectionsToReflections < ActiveRecord::Migration[5.2]
  def change
    rename_table :rflections, :reflections
  end
end
