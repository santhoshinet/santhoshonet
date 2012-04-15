Santhoshonet::Application.routes.draw do

  resources :blogs

  resources :contributors

  resources :categories

  get "db/reset"
  get 'home/index'

  match "/" , :controller => "home", :action => "index"
  match "/contact" , :controller => "home", :action => "contact"
  match "/aboutme" , :controller => "home", :action => "aboutme"
  match "/opensources" , :controller => "home", :action => "opensources"
  match ":controller/:action"

end
