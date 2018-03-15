class CreateAlcoholsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :alcohols_tags do |t|
      t.belongs_to :alcohol, index: true, null: false
      t.belongs_to :tag, index: true, null: false

      t.timestamps
    end
  end
end
