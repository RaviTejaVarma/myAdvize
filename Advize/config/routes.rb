Rails.application.routes.draw do
  devise_for :users
  resources :projects, except: :show do
  	resources :posts
  end
  
  get 'projects/:title', to: 'projects#show'

	root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
