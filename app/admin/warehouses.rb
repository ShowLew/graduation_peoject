ActiveAdmin.register Warehouse do
   menu false
  # permit_params :no, :quantity

  index do
    table_for WarehouseInfo.where(:quantity => (0..3)) do
      column "Emergency: ",     :no
      column "Quantity: ",      :quantity
      column "Local: ",         :local
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
