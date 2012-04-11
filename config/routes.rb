Santhoshonet::Application.routes.draw do
  resources :contributors

  resources :categories

  get "db/reset"
  get 'home/index'
  match "/" , :controller => "home", :action => "index"
  match ":controller/:action"
end
