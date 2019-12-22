class CreateYogas < ActiveRecord::Migration[5.1]
  def change
    create_table :yogas do |t|
      t.date :date
      t.string :name
      t.integer :lesson_id

      t.timestamps
    end
  end
end
