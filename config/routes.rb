Rails.application.routes.draw do
  get("/", { :controller => "game", :action => "home"})

  get("/dice/:numrolls/:sides", { :controller => "game", :action => "flexible"}) 
end
