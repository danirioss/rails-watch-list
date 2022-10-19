Rails.application.routes.draw do
  get 'bookmarks/index'
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/delete'
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/create'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
