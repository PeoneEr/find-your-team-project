Findyourteam::Application.routes.draw do
  devise_for :profiles
  resources :profiles do
    member do
      get 'settings', to: "profiles#settings"
    end
  end
  resources :teams
  root to: "start_pages#index"
end
