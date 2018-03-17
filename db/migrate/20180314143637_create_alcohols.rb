class CreateAlcohols < ActiveRecord::Migration[5.2]
  def change
    create_table :alcohols do |t|
      t.string :name
      t.string :degree
      t.belongs_to :producing_area, index: true, null: false
      t.belongs_to :category, index: true, null: false
      t.belongs_to :recipe, index: true, null: false

      t.timestamps
    end
  end
end
