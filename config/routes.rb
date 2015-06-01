Rails.application.routes.draw do
  root 'staticpages#index'

  resources :users
  resources :bulletins
  # resources :map_markers
  
  get 'find', to: 'staticpages#find'
  
  
  get 'learn-more', to: 'staticpages#learn_more'
  
  
end
