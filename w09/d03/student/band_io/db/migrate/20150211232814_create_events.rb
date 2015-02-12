class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date, null: false
      t.boolean :alcohol_served, default: true
      t.references "band"
      t.references "venue"
    end
  end
end

# date (mandatory)
# alcohol_served (defaults to true)
# band_id (mandatory)
# venue_id (mandatory)
