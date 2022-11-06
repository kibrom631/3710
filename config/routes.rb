Rails.application.routes.draw do
  resources :sections
  resources :semesters
  resources :courses
  resources :prefixes
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "landing_page#index"
end
