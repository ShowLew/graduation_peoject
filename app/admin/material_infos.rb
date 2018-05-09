ActiveAdmin.register MaterialInfo do
  menu priority: 4
  permit_params :material_name, :quantity, :local, :supplier_name, :supplier_phone, :latest_time

  show do
    attributes_table do
      %i[material_name quantity local supplier_name supplier_phone latest_time].each { |prop| row prop }
      # row('followers') { |user| textarea user.followers.pluck(:name).join("\n") }
    end
  end

  index do

    columns do
      column span: 3 do
        span "Emergency Material"
      end
      column do
        MaterialInfo.where(:quantity => (0..20)).size
      end
      column do
        link_to 'admin_material', "materials"
      end
    end

    selectable_column
    column 'M_Name', :material_name
    column 'Quantity', :quantity
    column 'Local', :local
    column 'S-Name', :supplier_name
    column 'S-Phone', :supplier_phone do |user|
      '+86-'.concat user.supplier_phone if user.supplier_phone.present?
    end
    # column :url do |user|
    #   link_to 'home', user.url, target: '_blank'
    # end
    %i[latest_time].each do |prop|
      column prop do |user|
        Time.at(user.send(prop)).strftime('%Y-%m-%d %H')
      end
    end
    actions name: 'Operate', defaults: true, dropdown: false
  end

  form do |f|
    f.inputs 'Info' do
      %i[material_name quantity local supplier_name supplier_phone latest_time].each { |prop| f.input prop }
    end
    f.actions
  end

  filter :material_name
  filter :supplier_name
end
