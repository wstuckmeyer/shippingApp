Rails.application.routes.draw do
  devise_for :users
	get 'sessions/new'
	root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, :ships, :jobs, :ship_jobs
	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
  	delete '/logout',  to: 'sessions#destroy'

end
