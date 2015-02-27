class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :code
      t.boolean :annihilated, :default => false
      t.string :geoname_id
      t.string :iso_alpha3
      t.integer :population
      t.integer :area_in_sq_km
      t.string :capital
      t.string :continent_name
      t.string :currency_code
      t.string :language
      t.string :flag_image

      t.timestamps null: false
    end
  end
end
