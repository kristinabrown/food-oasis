Rails.application.routes.draw do
  root 'staticpages#index'
  
  get 'learn-more', to: 'staticpages#learn_more'
  
  get 'posts', to: 'staticpages#posts'
end
