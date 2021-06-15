Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "posts#top"
  get "/new" => "posts#new"
  get "/:id" => "posts#detail"
  get "/:id/edit" => "posts#edit"
  
  post "/create" => "posts#create"
  post ":id/delete" => "posts#delete"
end
