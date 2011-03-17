MySite::Application.routes.draw do
  root :to => "articles#index"
  resources :articles do
    resources :comments
  end
  resources :users
  resource :session
  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"


  get "pages/home"

  get "pages/contact"

  get "pages/about"


end
