Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :articles
  root "home#index"
  get 'about', to: 'home#about'
end
