Rails.application.routes.draw do
  resources :tags
  resources :comments
  devise_for :users
  resources :posts
  resources :posts do
    resources :comments
  end
  root :to => "posts#index"

match ':controller(/:action(/:id(.:format)))', :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
