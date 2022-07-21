Rails.application.routes.draw do
  root to: redirect('/users')
  resources :users do
    collection do
      post :import
    end
  end
end
