Rails.application.routes.draw do

  # post 'api/v1/auth_user' , to:'api/v1/authentication#authenticate_user'
  # get 'api/v1/home' => 'api/v1/home#index'

    resources :users, only: [:create]

    post '/sign_in' , to:'users#login'
    get '/auto_login' => 'users#auto_login'




  # devise_for :users,
  #            defaults: { format: :json },
  #            path: '',
  #            path_names: {
  #                sign_in: 'api/login',
  #                sign_out: 'api/logout',
  #                registration: 'api/signup'
  #            },
  #            controllers: {
  #                sessions: 'sessions',
  #                registrations: 'registrations'
  #            }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
