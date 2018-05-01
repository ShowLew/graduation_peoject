json.extract! warehouse_info, :id, :no, :size, :fragile, :in_time, :quantity, :local, :created_at, :updated_at
json.url warehouse_info_url(warehouse_info, format: :json)
