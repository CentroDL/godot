class CreateRats < ActiveRecord::Migration
  def change
    create_table :rats do |t|
      t.string  :name
      t.integer :age
      t.string  :image_url
      t.timestamps
    end
  end
end
