Rails.application.routes.draw do
  # get '/users/:id(.:format)' :to => 'users#show'

  # users get /users/:id(.:format) users#show
  get '/signup', :to => 'users#new'
  
  get '/contact', :to => 'pages#contact'
  get '/about', :to => 'pages#about'
  get '/help', :to => 'pages#help'
  root :to => 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
