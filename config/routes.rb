Rails.application.routes.draw do
  post "/students" => "students#create"
  post "/sessions" => "sessions#create"

  get "/students", controller: "students", action: "index"
  get "/students/:id", controller: "students", action: "show"
  patch "/students/:id", controller: "students", action: "update"
end
