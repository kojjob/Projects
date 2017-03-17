Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :portfolios
  resources :skills
  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  root 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
