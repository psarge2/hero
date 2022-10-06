Rails.application.routes.draw do
  root 'home#index'
  # get 'home/index'
  get 'home/team'
  post "home/team" => "home#team"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
