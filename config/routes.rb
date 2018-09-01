Rails.application.routes.draw do

  resources :hotels 
resources :users
resources :books
resources :keywords
resources :products
resources :laptops do
    member do
      put 'update_second_record'
    end
          collection do
            get 'first_30_records'
          end
      end
  resources :hostels do
   member do
      put 'update_first_record'
    end
          collection do
            get 'first_10_records'
            get 'ajax_demo'
          end
      end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

