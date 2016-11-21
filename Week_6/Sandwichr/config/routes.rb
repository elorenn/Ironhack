Rails.application.routes.draw do
  resources :ingredients
  resources :sandwiches, except: [:new, :edit] do
  	resources :ingredients, except: [:new, :edit]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
