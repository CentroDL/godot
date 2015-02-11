class AddStankLevelToCheeses < ActiveRecord::Migration
  def change
    add_column :cheeses, :stank_level, :integer
  end
end
