Rails.application.routes.draw do
  root to: 'homes#index'
  resources :books, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
