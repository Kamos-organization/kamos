class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :alcohol, index: true, null: false
      t.belongs_to :user, foreign_key: true
      t.integer :evaluation
      t.integer :sweetness
      t.integer :acidity
      t.integer :bitter
      t.integer :richness
      t.integer :kire
      t.integer :fragrance
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
