class CreateOutWarehouseInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :out_warehouse_infos do |t|
      t.string :out_no
      t.string :out_address
      t.string :buyer_phone
      t.datetime :out_time
      t.boolean :finish
      t.string :buyer_name

      t.timestamps
    end
  end
end
