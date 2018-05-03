ActiveAdmin.register WarehouseInfo do
  menu priority: 3
  permit_params :no, :size, :fragile, :in_time, :quantity, :local

  # show do
  #   attributes_table do
  #     %i[no size fragile intime quantity local].each { |prop| row prop }
  #     # row('followers') { |user| textarea user.followers.pluck(:name).join("\n") }
  #   end
  # end

  index do
    selectable_column
    column 'No#', :no
    column 'Size', :size
    column 'InTime', :in_time
    # in_time cant nil
    # %i[intime].each do |prop|
    #   column prop do |user|
    #     if intime != nil
    #       Time.at(user.send(prop)).strftime('%Y-%m-%d %H')
    #     end
    # end
    column 'Fragile', :fragile
    column 'Quantity', :quantity
    column 'Location', :local

    # column :url do |user|
    #   link_to 'home', user.url, target: '_blank'
    # end

    actions name: 'Operate', defaults: true, dropdown: false
  end

  form do |f|
    f.inputs 'Item Info' do
      %i[no size in_time quantity local].each { |prop| f.input prop }
      f.input :fragile, as: :select
    end
    f.actions
  end

  filter :no
  filter :local
  filter :fragile
end
