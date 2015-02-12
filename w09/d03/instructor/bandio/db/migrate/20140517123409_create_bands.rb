class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.boolean :explicit_lyrics, :default => false
      t.timestamps
    end
  end
end
