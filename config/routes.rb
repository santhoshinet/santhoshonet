Santhoshonet::Application.routes.draw do
  get "db/reset"
  get 'home/index'
  match "/" , :controller => "home", :action => "index"
  match ":controller/:action"
end
