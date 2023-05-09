Rails.application.routes.draw do
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "user#index"
   get 'users' => 'user#index'
   get 'users/:id' => 'user#show'
end
