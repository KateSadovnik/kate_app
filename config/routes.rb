Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  get 'users/show'
  resources :items
  #root 'users#show' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
