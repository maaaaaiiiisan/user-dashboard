class CreateYogas < ActiveRecord::Migration[5.1]
  def change
    create_table :yogas do |t|
      t.date :date
      t.string :lesson
      t.string :category
      t.string :level

      t.timestamps
    end
  end
end
