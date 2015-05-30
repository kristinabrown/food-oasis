Rails.application.routes.draw do
  root 'staticpages#index'
  
  get 'learn-more', to: 'staticpages#learn_more'
  
  resources :map
  
  
end
