Findyourteam::Application.routes.draw do
  devise_for :profiles
  resources :profiles
  resources :teams
  root to: "start_pages#index"
end
