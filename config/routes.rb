Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"
  resources "users"
end
