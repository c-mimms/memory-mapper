Rails.application.routes.draw do
  get 'site/index'

  devise_for :users
  resources :text_memories
  root 'site#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
