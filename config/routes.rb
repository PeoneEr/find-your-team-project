Findyourteam::Application.routes.draw do
  devise_for :profiles
  root to: "start_pages#index"
end
