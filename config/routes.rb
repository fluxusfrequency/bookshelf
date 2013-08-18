Bookshelf::Application.routes.draw do
  root to: 'books#index'
  resources :books do |book|
    resources :comments, only: [:create]
  end
end
