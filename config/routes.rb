Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  # get '/merchants/search', to: 'welcome#index'

  resources :merchants, only: %i[index show] do
  end
  resources :items, only: %i[index show]
end
