HippoArtists::Application.routes.draw do
  get "users/new"
  root 'global_pages#home'
  match '/legal', to: 'global_pages#legal', via: 'get'
end
