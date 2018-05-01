class CreateUseMaterialInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :use_material_infos do |t|
      t.integer :worker_number,     null:false
      t.string :worker_name
      t.string :material_name
      t.integer :quantity,          default: 1
      t.datetime :use_time,         default:Time.zone.now

      t.timestamps
    end
  end
end
