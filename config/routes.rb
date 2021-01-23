Rails.application.routes.draw do
  resources :races
  # get 'characters/new'
  # get 'characters/create'
  # get 'characters/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#home"

  resources :users do 
    resources :characters
  end

  resources :characters

  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  delete '/session/', to: 'sessions#destroy'
end
