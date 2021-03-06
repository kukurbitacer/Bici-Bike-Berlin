Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  scope '/:locale' do
    root to: 'pages#home'
    resources :tours, only: [:show] do
      resources :bookings, only: [:create]
    end
    resources :guides, only: [:show]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
