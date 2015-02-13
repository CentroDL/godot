class ChangeAuthor < ActiveRecord::Migration
  def change
    change_column :authors, :gender, :string
  end
end
