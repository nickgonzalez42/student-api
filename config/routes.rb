Rails.application.routes.draw do
  post "/students" => "students#create"
end
