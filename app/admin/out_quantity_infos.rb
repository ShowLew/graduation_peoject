ActiveAdmin.register OutQuantityInfo do
  menu priority: 7
  permit_params :no, :quantity, :out_quantity_time
  index do
    selectable_column
    column 'NO#', :no
    column 'Quantity', :quantity
    %i[out_quantity_time].each do |prop|
      column prop do |user|
          Time.at(user.send(prop)).strftime('%Y-%m-%d %H')
      end
    end
    actions name: 'Operate', default: true
  end


  form do |f|
    f.inputs 'Out Quantity' do
      %i[no quantity out_quantity_time].each {|prop| f.input(prop)}
    end
    f.actions
  end

end
