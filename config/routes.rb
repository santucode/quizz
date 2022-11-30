Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  post "/given_answers/new" , to: "given_answers#create" 
  root "quizzes#index"

  resources :questions
  resources :quizzes
  resources :given_answers
end
