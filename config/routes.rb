RDC::Application.routes.draw do
  resources :admin, only: :index
  resources :client_connections, only: [:create, :index, :show]
  resources :message, only: :create
  root to: 'admin#index'
end
