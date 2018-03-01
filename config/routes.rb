Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  root 'site#home'
  get 'users/:id', to: 'users#show', as: 'user'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
