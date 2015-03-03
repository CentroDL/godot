class CreateTurtles < ActiveRecord::Migration
  def change
    create_table :turtles do |t|
      t.string :name
      t.string :eyeband_color
      t.string :weapon
      t.string :image_url
      t.timestamps
    end
  end
end
