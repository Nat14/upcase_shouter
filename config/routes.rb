Rails.application.routes.draw do
  root to: 'homes#show', via: :get
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show] do
    post 'follow' => 'following_relationships#create'
    delete 'follow' => 'following_relationships#destroy'
  end
  resources :hashtags, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
