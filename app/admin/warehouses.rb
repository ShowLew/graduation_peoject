ActiveAdmin.register Warehouse do
   menu priority:9
  # permit_params :no, :quantity

  index do
    column 'NO'
    column 'Q' do |warehouse_info|
      WarehouseInfo.where(quantity: (0..3)).pluck :no
    end
    column 'M' do |material_info|
      MaterialInfo.where(quantity: (0..10)).pluck :material_name
    end
  end
  config.filters = false
end
