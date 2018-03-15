class CreateProducingAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :producing_areas do |t|
      t.string :name
      t.string :region

      t.timestamps
    end
  end
end
