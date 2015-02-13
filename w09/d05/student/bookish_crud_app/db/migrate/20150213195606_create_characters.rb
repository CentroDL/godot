class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string     :name, null: false
      t.string     :gender, default: 0
      t.string     :quirk
      t.references :book, null: false
    end
  end
end
