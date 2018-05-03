ActiveAdmin.register OutWarehouseInfo do
  menu priority: 5
  permit_params :out_no, :out_address, :buyer_phone, :out_time, :finish, :buyer_name

  show do
    attributes_table do
      %i[out_no out_address buyer_phone out_time finish buyer_name].each { |prop| row prop }
    end
  end

  index do
    selectable_column
    column 'NO#', :out_no
    column 'Buyer-Address', :out_address

    %i[out_time].each do |prop|
      column prop do |user|
        Time.at(user.send(prop)).strftime('%Y-%m-%d %H')
      end
    end
    column 'Finish', :finish

    column 'Phone', :buyer_phone do |user|
      '+86-' + user.buyer_phone if user.buyer_phone.present?
    end

    # column :url do |user|
    #   link_to 'home', user.url, target: '_blank'
    # end

    actions name: 'Operate', defaults: true, dropdown: false
  end

  form do |f|
    f.inputs 'Sale' do
      %i[out_no out_address buyer_phone out_time finish buyer_name].each {|prop| f.input prop }
    end
    f.actions
  end

  filter :out_no
  filter :buyer_name
  filter :finish
end
