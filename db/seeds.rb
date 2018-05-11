# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'user@example.com',  password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'user@example.com',  password: 'password', password_confirmation: 'password') if Rails.env.development?

AdminUser.create!(email: 'operate@example.com',  password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'manager@example.com',  password: 'password', password_confirmation: 'password')


#Warehouse_info's seeds
WarehouseInfo.create(no: '66', size: '100*150*120', fragile: false, quantity: 8,  local: 'A-1')
WarehouseInfo.create(no: '67', size: '100*130*120', fragile: false, quantity: 7,  local: 'B-1')
WarehouseInfo.create(no: '68', size: '160*150*120', fragile: false, quantity: 5,  local: 'B-1')
WarehouseInfo.create(no: '73', size: '200*150*90',  fragile: true,  quantity: 2,  local: 'A-2')
WarehouseInfo.create(no: '75', size: '100*150*85',  fragile: false, quantity: 12, local: 'A-2')
WarehouseInfo.create(no: '23', size: '100*120*120', fragile: true,  quantity: 1,  local: 'B-1')
WarehouseInfo.create(no: '35', size: '100*150*120', fragile: false, quantity: 12, local: 'B-1')
WarehouseInfo.create(no: '44', size: '110*165*120', fragile: true,  quantity: 9,  local: 'B-2')
WarehouseInfo.create(no: '46', size: '90*140*120',  fragile: false, quantity: 12, local: 'A-1')
WarehouseInfo.create(no: '09', size: '120*145*110', fragile: false, quantity: 3,  local: 'B-1')
WarehouseInfo.create(no: '51', size: '150*150*110', fragile: false, quantity: 20, local: 'B-1')
WarehouseInfo.create(no: '40', size: '105*145*120', fragile: false, quantity: 11, local: 'A-1')
WarehouseInfo.create(no: '42', size: '100*120*120', fragile: false, quantity: 15, local: 'A-2')

#Out_Warehouse_Info
OutWarehouseInfo.create(out_no: '11', out_address: 'sichuan',   buyer_phone: '13666666666',  finish: true,  buyer_name: 'www')
OutWarehouseInfo.create(out_no: '22', out_address: 'chengdu',   buyer_phone: '13777777777',  finish: false, buyer_name: 'qqq')
OutWarehouseInfo.create(out_no: '33', out_address: 'wuhan',     buyer_phone: '13888888888',  finish: true,  buyer_name: 'aaa')
OutWarehouseInfo.create(out_no: '44', out_address: 'meishan',   buyer_phone: '13999999999',  finish: false, buyer_name: 'eee')
OutWarehouseInfo.create(out_no: '55', out_address: 'beijing',   buyer_phone: '15111111111',  finish: false, buyer_name: 'rrr')
OutWarehouseInfo.create(out_no: '66', out_address: 'shanghai',  buyer_phone: '15222222222',  finish: true,  buyer_name: 'ttt')
OutWarehouseInfo.create(out_no: '77', out_address: 'shenzhen',  buyer_phone: '15333333333',  finish: false, buyer_name: 'ddd')
OutWarehouseInfo.create(out_no: '88', out_address: 'sichuan',   buyer_phone: '15444444444',  finish: true,  buyer_name: 'zzz')
OutWarehouseInfo.create(out_no: '99', out_address: 'guangzhou', buyer_phone: '15555555555',  finish: false, buyer_name: 'xxx')
OutWarehouseInfo.create(out_no: '12', out_address: 'hainan',    buyer_phone: '16666666666',  finish: true,  buyer_name: 'ccc')
OutWarehouseInfo.create(out_no: '13', out_address: 'wuxi',      buyer_phone: '17777777777',  finish: false, buyer_name: 'vvv')
OutWarehouseInfo.create(out_no: '14', out_address: 'what',      buyer_phone: '18888888888',  finish: true,  buyer_name: 'qqq')


#Material_Info
MaterialInfo.create(material_name: 'mucai', quantity: 199, local: 'C-1', supplier_name: 'ppp', supplier_phone: '19999999999')
MaterialInfo.create(material_name: 'qweer', quantity: 199, local: 'C-1', supplier_name: 'ooo', supplier_phone: '18888888888')
MaterialInfo.create(material_name: 'asdaf', quantity: 199, local: 'C-1', supplier_name: 'lll', supplier_phone: '19999966666')
MaterialInfo.create(material_name: 'czxca', quantity: 199, local: 'C-1', supplier_name: 'kkk', supplier_phone: '19911111111')
MaterialInfo.create(material_name: 'qweqa', quantity: 199, local: 'C-1', supplier_name: 'uuu', supplier_phone: '19999555555')
MaterialInfo.create(material_name: 'asdad', quantity: 199, local: 'D-2', supplier_name: 'mmm', supplier_phone: '19999222229')
MaterialInfo.create(material_name: 'asdcz', quantity: 199, local: 'C-1', supplier_name: 'nnn', supplier_phone: '19999999999')
MaterialInfo.create(material_name: 'dwdxz', quantity: 199, local: 'C-1', supplier_name: 'hhh', supplier_phone: '19155151999')
MaterialInfo.create(material_name: 'grrgd', quantity: 199, local: 'C-1', supplier_name: 'jjj', supplier_phone: '18888889999')
MaterialInfo.create(material_name: 'etedf', quantity: 199, local: 'C-1', supplier_name: 'hhh', supplier_phone: '19111111999')
MaterialInfo.create(material_name: 'rewfd', quantity: 199, local: 'C-1', supplier_name: 'tyu', supplier_phone: '19564649999')
MaterialInfo.create(material_name: 'werer', quantity: 199, local: 'D-1', supplier_name: 'hjk', supplier_phone: '12154545459')
MaterialInfo.create(material_name: 'dfgdg', quantity: 199, local: 'D-1', supplier_name: 'lkj', supplier_phone: '19988888889')
MaterialInfo.create(material_name: 'werre', quantity: 199, local: 'D-1', supplier_name: 'iop', supplier_phone: '19991112229')


#Use_Material_Info
UseMaterialInfo.create(worker_number: 1, material_name: 'mucai', worker_name: '1qqq', quantity: 1)
UseMaterialInfo.create(worker_number: 2, material_name: 'qweer', worker_name: '2www', quantity: 2)
UseMaterialInfo.create(worker_number: 3, material_name: 'asdaf', worker_name: '1eee', quantity: 12)
UseMaterialInfo.create(worker_number: 4, material_name: 'czxca', worker_name: '1333', quantity: 2)
UseMaterialInfo.create(worker_number: 5, material_name: 'asdcz', worker_name: '1www', quantity: 34)
UseMaterialInfo.create(worker_number: 6, material_name: 'mucai', worker_name: '1aaa', quantity: 23)
UseMaterialInfo.create(worker_number: 7, material_name: 'mucai', worker_name: '1zzz', quantity: 1)
UseMaterialInfo.create(worker_number: 8, material_name: 'werer', worker_name: '1ccc', quantity: 22)
UseMaterialInfo.create(worker_number: 9, material_name: 'mucai', worker_name: '1weq', quantity: 12)
UseMaterialInfo.create(worker_number: 10, material_name: 'werre', worker_name: '1asd', quantity: 1)
UseMaterialInfo.create(worker_number: 11, material_name: 'werer', worker_name: '1zxc', quantity: 9)


#Out_Quantity_Info
OutQuantityInfo.create(no: '42', quantity: 12)
OutQuantityInfo.create(no: '23', quantity: 2)
OutQuantityInfo.create(no: '33', quantity: 3)
OutQuantityInfo.create(no: '12', quantity: 6)
OutQuantityInfo.create(no: '43', quantity: 5)
OutQuantityInfo.create(no: '54', quantity: 9)
OutQuantityInfo.create(no: '65', quantity: 7)
OutQuantityInfo.create(no: '45', quantity: 1)
OutQuantityInfo.create(no: '29', quantity: 8)
OutQuantityInfo.create(no: '67', quantity: 8)
