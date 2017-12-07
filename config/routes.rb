Rails.application.routes.draw do
  # get 'pages/home'

  # get 'pages/contact'
  get '/contact', :to => 'pages#contact'
  get '/about', :to => 'pages#about'
  get '/help', :to => 'pages#help'
  root :to => 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
