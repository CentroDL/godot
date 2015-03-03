class CreateFootSoldiers < ActiveRecord::Migration
  def change
    create_table :foot_soldiers do |t|
      t.integer :height_in_inches
      t.integer :weight_in_pounds
      t.string  :image_url,        :default => "http://theflickcast.com/wp-content/uploads/gallery/teenage-mutant-ninja-turtles-toy-fair-2012/footsoldier.jpg"
      t.timestamps
    end
  end
end
