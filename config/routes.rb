Urdb::Application.routes.draw do
  resources :movies do
    resources :locations do
      resources :showtimes
    end
  end

  root 'movies#index'
end
