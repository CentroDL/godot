class ChangeReferenceColumnsInPurchases < ActiveRecord::Migration
  def change
    rename_column :purchases, :users_id, :user_id
    rename_column :purchases, :movies_id, :movie_id
  end
end
