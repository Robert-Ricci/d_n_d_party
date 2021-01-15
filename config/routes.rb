Rails.application.routes.draw do
  get 'character/new'
  get 'character/create'
  get 'character/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#home"

  resources :users do 
    resources :character
  end
end
