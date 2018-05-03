ActiveAdmin.register UseMaterialInfo do
  menu priority: 6
  permit_params :worker_number, :worker_name, :material_name, :quantity, :use_time

  index do
    selectable_column
    column 'Worker_Number', :worker_number
    column 'Worker_Name', :worker_name
    column 'Material_Name', :material_name
    column 'Quantity', :quantity
    %i[use_time].each do |prop|
      column prop do |user|
        Time.at(user.send(prop)).strftime('%Y-%m-%d %H')
      end
    end
    actions name: 'Operate', default: true
  end


  form do |f |
    f.inputs 'Use material Info' do
      %i[worker_number worker_name material_name quantity use_time].each{|prop| f.input prop}
    end
    f.actions
  end

  filter :worker_number
  filter :material_name
end
