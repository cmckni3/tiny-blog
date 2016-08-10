Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :blogs, only: [:show], path: 'blogs' do
    resources :posts, except: [:index], path: 'posts'
  end
end
