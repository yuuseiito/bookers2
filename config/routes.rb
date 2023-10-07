Rails.application.routes.draw do
  #get 'homes/top'
  devise_for :users
  get 'home/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"homes#top"
   resources :books, only:[:index, :show, :edit, :create, :destroy, :update]
   resources :users, only:[:index, :show, :edit, :update]
end
