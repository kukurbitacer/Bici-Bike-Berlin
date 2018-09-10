Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  scope '(:locale)', locale: /de/ do
    root to: 'pages#home'
    resources :tours, only: [:index, :show]
    resources :guides, only: [:show]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
