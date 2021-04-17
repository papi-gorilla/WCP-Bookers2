Rails.application.routes.draw do
  devise_for :users

  root to: "homes#top"
  get "home/about" => "homes#about"
  resources :books, only:[:index, :show, :edit]
  resources :users, only:[:index, :show, :edit]
end
