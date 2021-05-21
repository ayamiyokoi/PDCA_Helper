class CreateRflections < ActiveRecord::Migration[5.2]
  def change
    create_table :rflections do |t|
      t.string :goal
      t.string :result
      t.string :biggergoal
      t.text :plan
      t.text :topic
      t.text :overall

      t.timestamps
    end
  end
end
