class CreateAlcoholsMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :alcohols_materials do |t|
      t.belongs_to :alcohol, index: true, null: false
      t.belongs_to :material, index: true, null: false

      t.timestamps
    end
  end
end
