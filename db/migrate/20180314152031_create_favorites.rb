class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.belongs_to :alcohol, index: true, null: false
      t.belongs_to :user, index: true, null: false

      t.timestamps
    end
  end
end
