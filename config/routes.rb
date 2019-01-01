Rails.application.routes.draw do
  resources :tasks
  resources :user_chores
  resources :chores
  resources :rules
  resources :invite_emails
  resources :duties
  resources :homes
  resources :users
  resources :user_homes
  resources :invite_emails, only: [:create]
  post '/login', to: 'auth#login'
  get '/reauth', to: 'auth#reauth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
