Santhoshonet::Application.routes.draw do
  get 'home/index'
  match "/" , :controller => "home", :action => "index"
  match ":controller/:action"
end
