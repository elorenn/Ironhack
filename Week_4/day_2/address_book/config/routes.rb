Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "site#home"

  get "/contacts", to: "contacts#index"

  get "/contacts/new", to: "contacts#new"
  post "/contacts", to: "contacts#create"

  get "/contacts/:id/show", to: "contacts#show", as: "contacts_show"

end
