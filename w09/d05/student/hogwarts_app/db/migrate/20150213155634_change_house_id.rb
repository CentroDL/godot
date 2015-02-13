class ChangeHouseId < ActiveRecord::Migration
  def change
    rename_column(:students, :houses_id, :house_id)
  end
end
