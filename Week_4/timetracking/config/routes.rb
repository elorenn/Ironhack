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

end
