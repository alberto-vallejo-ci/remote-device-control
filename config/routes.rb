RDC::Application.routes.draw do
  resources :client, only: :index
  resources :admin, only: :index
  root to: 'admin#index'
end
