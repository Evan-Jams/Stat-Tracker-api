Rails.application.routes.draw do
  resources :rounds do
    resources :holes
  end
  resources :holes
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
