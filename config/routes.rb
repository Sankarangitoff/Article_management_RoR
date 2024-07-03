Rails.application.routes.draw do
  get 'users/index'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users, only: [:index, :edit, :update, :destroy]

  resources :articles
  root "home#index"
  get 'about', to: 'home#about'
end
