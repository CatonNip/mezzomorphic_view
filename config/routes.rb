Rails.application.routes.draw do
  #landing page
  get '/' =>  'landing#index'

  # sessions 
  get '/login' =>  'sessions#login'

  resources :users, only: [:new, :show, :edit]

  resources :channels, only: [:index, :new, :show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
