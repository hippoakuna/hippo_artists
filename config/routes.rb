HippoArtists::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'global_pages#home'
  match '/legal',   to: 'global_pages#legal', via: 'get'
  match '/signup',  to: 'users#new',          via: 'get'
  match '/signin',  to: 'sessions#new',       via: 'get'
  match '/signout', to: 'sessions#destroy',   via: 'delete'
end
