class CreateOutQuantityInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :out_quantity_infos do |t|
      t.string :no,                  null: false
      t.integer :quantity,           default: 1
      t.datetime :out_quantity_time, default: Time.current

      t.timestamps
    end
  end
end
