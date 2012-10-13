RDC::Application.routes.draw do
  resources :admin, only: :index
  root to: 'admin#index'
end
