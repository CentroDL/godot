class AddAllyToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :ally, :boolean, default: false
  end
end
