class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :lesson
      t.string :category
      t.string :level

      t.timestamps
    end
  end
end
