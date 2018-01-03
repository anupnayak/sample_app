Rails.application.routes.draw do
  resources :users
  resource :sessions, :only => [:new, :create, :destroy]

<<<<<<< HEAD
  get 'sessions/new'
  get '/signin', :to => 'sessions#new'
  delete '/signout', :to => 'sessions#destroy'
=======

  # get 'sessions/new'
  # get '/signin', :to => 'sessions#new'
  # get '/signout', :to => 'sessions#destroy'
>>>>>>> 62386a805727b97f3af15645a393fdecc0aaa6b6
  
  # get 'users/new'
  # get '/signup', :to => 'users#new'
  # get ':id', to: 'users#show', as: 'show'
 

  
  get '/contact', :to => 'pages#contact'
  get '/about', :to => 'pages#about'
  get '/help', :to => 'pages#help'
  root :to => 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
