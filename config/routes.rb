Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as:'portfolio_show' #mapping the data
  get 'about-me', to: 'pages#about' #pass anything you want as name (about-me)
  get 'contact', to: 'pages#contact'



  resources :blogs do 
    member do
      get :toggle_status
    end

  end

  root to: 'pages#home' #sets the root path, root of the app is the home page
  #set the root to pages#home
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
