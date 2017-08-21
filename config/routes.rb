Rails.application.routes.draw do
  devise_for :users
  resources :text_memories
  root 'text_memories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
