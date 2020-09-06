Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#index'

  namespace :admin do
    resources :cars, except: [:show]
    resources :renters, except: [:show]
    resources :reports, except: [:new, :create, :edit, :update, :destroy, :index, :show] do
      collection do
        get 'history'
        get 'revenue'
      end
    end
  end

  resources :renters, except: [:new, :create, :edit, :update, :destroy, :index, :show] do
    collection do
      get 'available_cars'
      get 'history'
      get 'return_car'
    end

    member do
      get 'book_car'
      post 'execute_book_car'
      post 'execute_return_car'
    end
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#login'
  get 'logout', to: 'sessions#logout'
end
