Rails.application.routes.draw do
  root 'staticpages#index'

  resources :users
  resources :bulletins
  # resources :map_markers
  
  get 'find', to: 'staticpages#find'
  
  
  get 'learn-more', to: 'staticpages#learn_more'
  
  get '/auth/twitter/callback', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"  
end
