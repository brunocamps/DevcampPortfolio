Rails.application.routes.draw do
  resources :portfolios
  get 'about-me', to: 'pages#about' #pass anything you want as name (about-me)
  get 'contact', to: 'pages#contact'



  resources :blogs

  root to: 'pages#home' #sets the root path, root of the app is the home page
  #set the root to pages#home
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
