Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Demander à Rails de créer toutes les routes pour manager les articles
  # resources :articles

  resources :articles, only: [:show, :new]

  root to: 'chapters#index'

end
