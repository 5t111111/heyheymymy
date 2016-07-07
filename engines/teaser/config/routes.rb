Teaser::Engine.routes.draw do
  root to: 'pre_registrants#new'
  resources :pre_registrants
end
