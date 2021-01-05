Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :activities, only: [:index, :show]
  resources :comments, only: [:create, :show, :delete]

end
