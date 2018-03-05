Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  get 'home', to: 'site#home', as: 'home'
  root 'site#index'
  get 'profiles/:id', to: 'site#show', as: 'user'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users do
    resources :recipes, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
