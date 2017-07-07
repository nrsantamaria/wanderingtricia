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

  resources :home do
    collection do
      get :all_images
      get :landscape
      get :hospitality
      get :interior
    end
  end

  root to: 'home#index'
end
