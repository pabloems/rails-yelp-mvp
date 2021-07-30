Rails.application.routes.draw do
  get 'restaurants/Reviews'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: ["show", "new", "create", "index"] do
    resources :reviews, only: %i[new create]
  end
end
