Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
   
   namespace :admin do
    resources :events
   end

   namespace :admin do
     resources :event_groups 
   end

   namespace :admin do
     resources :registrations 
   end

   resources :events, only: [:index, :show]  do
     get :register, on: :member
     get :unregister, on: :member
   end

   resources :event_groups, only: [:index, :show]  do
     get :register, on: :member
     get :unregister, on: :member
   end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  

end
