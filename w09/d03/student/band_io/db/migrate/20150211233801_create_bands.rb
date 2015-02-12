class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name, null: false, unique: true
      t.string :genre, null: false
      t.boolean :has_explicit_lyrics, default: false
    end
  end
end
