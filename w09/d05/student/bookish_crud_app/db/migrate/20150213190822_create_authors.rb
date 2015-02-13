class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string   :name,          null: false
      t.date     :born_on,       null: false
      t.date     :died_on
      t.string   :gender,        default: 0
      t.boolean  :has_pseudonym, default: false
    end
  end
end
