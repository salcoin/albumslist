Albumslist::Application.routes.draw do
  resources :album_owneds


  resources :artists


  resources :albums


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end