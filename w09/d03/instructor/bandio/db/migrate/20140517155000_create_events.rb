class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime   :date
      t.boolean    :alcohol_served, :default => true
      t.references :venue
      t.references :band
      t.timestamps
    end
  end
end
