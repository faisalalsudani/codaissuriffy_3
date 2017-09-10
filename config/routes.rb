Rails.application.routes.draw do
  # get 'pages/home'
  root to: 'pages#home'

  root "songs#index"
  resources :songs
  resources :artists
end
