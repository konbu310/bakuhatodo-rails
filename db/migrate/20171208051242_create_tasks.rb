class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.date :deadline
      t.integer :top
      t.integer :left
      t.integer :width
      t.integer :height
      t.integer :user_id

      t.timestamps
    end
  end
end
