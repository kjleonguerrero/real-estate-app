Rails.application.routes.draw do
  get "/home" => "homes#index"
  get "/home" => "homes#show"
end
