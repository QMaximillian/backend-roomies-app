Rails.application.routes.draw do
  resources :duties
  resources :homes
  resources :users
  resources :user_homes

  post '/login', to: 'auth#login'
  get '/reauth', to: 'auth#reauth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
