Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
  

  devise_for :users
#  root "pages#home"
  root "todo_lists#index"
  get "new" => "pages#new"
  get "current" => "pages#current"
  
end
