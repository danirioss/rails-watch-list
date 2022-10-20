Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookmarks, only: [:create, :new]
  end

  resources :bookmarks, only: :destroy
end
