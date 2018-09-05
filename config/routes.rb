Rails.application.routes.draw do
  resources :hostels
resources :hotel
resources :users
resources :books
resources :products
resources :animals
root 'animals#index'
 # aFor details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
