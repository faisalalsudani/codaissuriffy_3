Rails.application.routes.draw do
  root "pages#home"

    resources :photos

    resources :artists do
      resources :songs
    end

    namespace :api do
      resources :artists do
        resources :songs do
        end
      end
    end

end
