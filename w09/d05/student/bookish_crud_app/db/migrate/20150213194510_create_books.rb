class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string     :title,       null: false, unique: true
      t.date       :released_on, null: false
      t.string     :genre,       null: false
      t.references :author,     null: false
    end
  end
end
