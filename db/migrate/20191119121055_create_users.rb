class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :twitterId
      t.string :country
      t.string :position
      t.date :date
      t.string :twitterLink
      t.string :twitterArticle
      t.string :memo

      t.timestamps
    end
  end
end
