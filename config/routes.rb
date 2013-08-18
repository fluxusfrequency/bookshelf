Bookshelf::Application.routes.draw do
  devise_for :admins

  root to: 'books#index'
  resources :books do |book|
    resources :comments, only: [:create]
  end
end
