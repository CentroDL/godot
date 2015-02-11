class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string   "purchase_type"
      t.decimal  "amount",    precision: 6, scale: 2
      t.references "users"
      t.references "movies"
      t.timestamps
    end
  end
end
