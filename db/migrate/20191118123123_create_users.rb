class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :twitterId
      t.string :twitterLink
      t.string :date

      t.timestamps
    end
  end
end
