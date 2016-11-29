Rails.application.routes.draw do
  root 'barbecues#index'

  resources :barbecues, only: [ :index, :show, :new, :create ]
end
