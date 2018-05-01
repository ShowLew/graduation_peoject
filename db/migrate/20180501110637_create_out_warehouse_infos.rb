class CreateOutWarehouseInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :out_warehouse_infos do |t|
      t.string :out_no,         null:false
      t.string :out_address
      t.string :buyer_phone
      t.datetime :out_time,     default:Time.zone.now
      t.boolean :finish,        default:false
      t.string :buyer_name

      t.timestamps
    end
  end
end
