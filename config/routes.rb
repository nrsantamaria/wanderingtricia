Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }

  resources :users do
    resources :images
  end

  resources :images do
    resources :reviews
  end

  root to: 'home#index'
end
