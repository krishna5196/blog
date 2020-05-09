Rails.application.routes.draw do
  devise_for :users
  root :to => "home#index"
  resources :posts
  resources :posts do
    resources :comments
  end

  resources :tags
  resources :comments



match ':controller(/:action(/:id(.:format)))', :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
