Rails.application.routes.draw do

  devise_for :users
  resources :items

  devise_scope :user do
    authenticated :user do
      root 'items#index', as: :authenticated_root
    end
  end

  root 'pages#welcome'

end
