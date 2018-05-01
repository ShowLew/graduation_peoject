json.extract! material_info, :id, :material_name, :quantity, :local, :supplier_name, :supplier_phone, :latest_time, :created_at, :updated_at
json.url material_info_url(material_info, format: :json)
