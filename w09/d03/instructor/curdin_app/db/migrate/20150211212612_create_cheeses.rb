class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.string :name,      null: false
      t.string :milk_type, null: false
      t.string :image_url
      t.text :description
      t.timestamps
    end
  end
end
