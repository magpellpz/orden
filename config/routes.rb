Rails.application.routes.draw do
  resources :orden_servicios
  resources :equipos
  resources :servicios
  resources :tipo_equipos
  resources :modelos
  resources :marcas
  resources :clientes
  devise_for :users
  #get 'index/index'
  root to: "index#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
