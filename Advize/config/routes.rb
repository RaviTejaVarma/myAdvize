Rails.application.routes.draw do
  devise_for :users
  resources :users, except: [:create, :new, :show]
  resources :projects, except: :show do
  	resources :posts
  end
  
  get 'projects/:title', to: 'projects#show'
  get 'users/:username', to: 'users#show', as: 'user_show'

	root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
