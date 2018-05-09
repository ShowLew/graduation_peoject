ActiveAdmin.register Material do
  menu false

  index do
    table_for MaterialInfo.where(:quantity => (0..20)) do
      column "Emergency Material",      :material_name
      column "Remaining Quantity",      :quantity
      column "Supplier Name",          :supplier_name
    end
  end

  sidebar :help do
    ul do
      li "Not sure to produce this product?"
      li "Please call the manager."
    end
  end
  sidebar :help do
    ul do
      li "Manage-Phone: 13308230953"
      li "Worker_Phone: 13399999999"
    end
  end

  config.filters = false

end
