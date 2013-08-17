HippoArtists::Application.routes.draw do
  resources :sessions,      only: [:new, :create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :users do
    member do
      get :following, :followers
    end
  end

  root 'global_pages#home'

  match '/legal',   to: 'global_pages#legal', via: 'get'
  match '/signup',  to: 'users#new',          via: 'get'
  match '/signin',  to: 'sessions#new',       via: 'get'
  match '/signout', to: 'sessions#destroy',   via: 'delete'
end
