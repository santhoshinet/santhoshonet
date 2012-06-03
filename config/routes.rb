Santhoshonet::Application.routes.draw do

  resources :aims
  resources :blogs
  resources :contributors
  resources :categories
  resources :mail_credentials

  get "db/reset"
  get 'home/index'

  match "/" , :controller => "home", :action => "index"
  match "/contact" , :controller => "home", :action => "contact"
  match "/aboutme" , :controller => "home", :action => "aboutme"
  match "/opensources" , :controller => "home", :action => "opensources"
  match "/blog/:id/:title", :controller => "blogs", :action => "show"
  match "/category/:category", :controller => "blogs", :action => "category_wise"
  match ":controller/:action(:id)"


end
