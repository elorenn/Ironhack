Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get "/", to: "site#home"

	get "/concerts", to: "concerts#index"

	get "/concerts/new", to: "concerts#new"
 	post "/concerts", to: "concerts#create"

 	get '/concerts/:id/show', to: 'concerts#show'

end
