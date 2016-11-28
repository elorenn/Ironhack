Rails.application.routes.draw do

  root 'site#home'	
  resources :sandwiches, only: [:index, :show]
  
  scope "/api" do
    resources :sandwiches, except: [:new, :edit]
    resources :ingredients, except: [:new, :edit]
    post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
