Rails.application.routes.draw do
  get "/", to: "pets#index"
  get "/pets/new", to: "pets#new"
  get "/pets/:id/edit", to: "pets#edit"
  get "/pets/:id", to: "pets#show"
  post "/pets", to: "pets#create"
  patch "/pets/:id", to: "pets#update"
  delete "/pets/:id", to: "pets#destroy"
end
