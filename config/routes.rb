Rails.application.routes.draw do
  resources :warehouses
  resources :out_quantity_infos
  resources :use_material_infos
  resources :material_infos
  resources :out_warehouse_infos
  resources :warehouse_infos
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
