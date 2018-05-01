class CreateWarehouseInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouse_infos do |t|
      t.string :no
      t.string :size
      t.boolean :fragile
      t.datetime :in_time
      t.integer :quantity
      t.string :local

      t.timestamps
    end
  end
end
