class CreateVillains < ActiveRecord::Migration
  def change
    create_table :villains do |t|
      t.string :name
      t.string :species
      t.string :superpower
      t.timestamps
    end
  end
end
