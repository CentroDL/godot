class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :username
      t.string :password_digest
      t.date :born_on

      t.timestamps null: false
    end
  end
end
