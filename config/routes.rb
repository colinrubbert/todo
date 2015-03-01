Rails.application.routes.draw do
  resources :todo_lists

  devise_for :users
  root "pages#home"
  get "new" => "pages#new"
  get "current" => "pages#current"
  
end
