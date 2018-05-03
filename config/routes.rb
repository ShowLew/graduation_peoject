Rails.application.routes.draw do
  resources :warehouses
  resources :out_quantity_infos
  resources :use_material_infos
  resources :material_infos
  resources :out_warehouse_infos
  resources :warehouse_infos
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
