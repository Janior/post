Rails.application.routes.draw do
  root 'blogs#index'
  resources :blogs
  devise_for :users

  resources :blogs do
  	resources :comments, only:[:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
