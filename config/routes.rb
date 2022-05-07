Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/gums" => "gums#index"
  post "/gums" => "gums#create"
  get "/gums/:id" => "gums#show"
  patch "/gums/:id" => "gums#update"
  delete "/gums/:id" => "gums#destroy"

end
