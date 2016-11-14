Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get "/", to: "site#home"

	# get "/concerts", to: "concerts#index"

	# get "/concerts/new", to: "concerts#new"
 	# post "/concerts", to: "concerts#create"

 	# get '/concerts/:id', to: 'concerts#show', as: :concert_show

 	# get '/concerts/:id/comments', to: 'comments#index', as: :concert_comments

 	# get '/concerts/:id/comments/new', to: 'comments#new', as: :new_concert_comments


 	resources :concerts, only: [:index, :show, :new, :create] do 
    resources :comments, except: [:show]
   end  

end
