json.extract! out_warehouse_info, :id, :out_no, :out_address, :buyer_phone, :out_time, :finish, :buyer_name, :created_at, :updated_at
json.url out_warehouse_info_url(out_warehouse_info, format: :json)
