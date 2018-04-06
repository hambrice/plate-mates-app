Rails.application.routes.draw do
  resources :recipes do
    resources :likes, only: [:create, :destroy]
    resources :comments
  end
  #resources :likes, only: [:create, :destroy]
  #post 'recipes/:id/like', to: 'recipes#like', as: 'like_recipe'
  #post 'recipes/:id/unlike', to: 'recipes#unlike', as: 'unlike_recipe'
  get 'home', to: 'site#home', as: 'home'
  root 'site#index'
  #get 'profiles/:id', to: 'site#show', as: 'user'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }, path: 'u'
  resources :users do
    resources :recipes, only: [:index, :show]
  end

  resources :categories, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
