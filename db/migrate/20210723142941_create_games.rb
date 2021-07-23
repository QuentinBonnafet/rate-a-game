class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :score
      t.string :studio
      t.string :plateform
      t.string :genre
      t.integer :year

      t.timestamps
    end
  end
end
