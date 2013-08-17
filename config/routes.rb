HippoArtists::Application.routes.draw do
  resources :users
  root 'global_pages#home'
  match '/legal',  to: 'global_pages#legal', via: 'get'
  match '/signup', to: 'users#new',          via: 'get'
end
