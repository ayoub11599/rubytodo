Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  get "/salut", to: "pages#salut", as: "salut"
  #get "/salut/:name", to: "pages#salutto", as: "to"
  #parametre optionnel
  #get "/coucou(/:name)", to: "pages#coucou", as: "coucou"
  #get "/posts", to: "posts#index", as: "post_index"
  resources :posts, only: [:index, :show, :edit, :update, :create]
end
