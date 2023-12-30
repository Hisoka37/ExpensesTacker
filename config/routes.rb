Rails.application.routes.draw do
  resources :categories
  root 'expenses#index'
  resources :expenses, except: %i[show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
