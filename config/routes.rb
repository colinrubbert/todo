Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get "new" => "pages#new"
  get "current" => "pages#current"
  
end
