class CreateMaterialInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :material_infos do |t|
      t.string :material_name,    null:false
      t.integer :quantity,        default: 1
      t.string :local
      t.string :supplier_name
      t.string :supplier_phone
      t.datetime :latest_time,     default: Time.current

      t.timestamps
    end
  end
end
