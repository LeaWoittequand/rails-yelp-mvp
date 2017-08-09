Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# resources :restaurants do
#     resources :reviews, only: [ :new, :create ]

  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end

  namespace :admin do
    resources :restaurants, only: [:index, :edit, :destroy]
  end

end
