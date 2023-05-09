Rails.application.routes.draw do
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  resources :users, defaults: { format: :json }
  resources :tags, defaults: {format: :json}
end
