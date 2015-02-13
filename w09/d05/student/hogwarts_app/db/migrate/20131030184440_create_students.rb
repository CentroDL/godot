class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.string :img_url, null: false
      t.integer :houses_id, null:false, index:true

      t.timestamps
    end

  end
end
