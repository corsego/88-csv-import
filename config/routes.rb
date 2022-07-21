Rails.application.routes.draw do
  root to: redirect("/users")
  resources :users
end
