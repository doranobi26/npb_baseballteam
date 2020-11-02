Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'relationships/create'
  get 'relationships/destroy'
  root 'homes#top'
  get 'home/about' => 'homes/about'
  get 'user/personal/:id' => 'users#personal',as:"user_personal"
  get 'user/nice/:id' => 'users#nice',as:"user_nice"
  get 'search' => 'searchs#search'

  resources :users, only: [:index, :show, :edit, :update]
  resources :posts do
    resources :comments, only:[:create, :destroy]
    resource :nices, only: [:create, :destroy]
  end

end
