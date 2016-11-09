Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


# these are all acceptable ways of writing the same thing:
# how to get to the homepage:
  get("/", { :to => "site#home"})
  get("/", { to: "site#home"})
  get "/", { to: "site#home"}
  get "/", :to => "site#home"

  get "/about", :to => "site#about"

  get "/contact", :to => "site#contact"

  get "/say_name/:name", to: "site#say_name"

  get "/calculate", to: "calculate#add_form"
  post "/calculate", to: "calculate#process_addition"
  	# <form method="post" action="/calculator">

  get '/projects', to: 'projects#index'  


  get '/projects/new', to: 'projects#new'
  post 'projects', to: 'projects#create'

# the colon (:) before id means that it's a placeholder
# get routes with placeholders need to go as low in the get order as possible
# otherwise rails will incorrectly interpret other things (ex: /new) as :ids
# in the url, :id will be replaced with each corresponding id value
# if you try to visit the page, you have to plug in a read id value number

#                                              project path
#                                                   |
  get '/projects/:id', to: 'projects#show', as: "project" 

  get '/projects/:project_id/time_entries', to: 'time_entries#index', as: "project_time_entries"

end
