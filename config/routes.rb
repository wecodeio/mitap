Rails.application.routes.draw do
   namespace :admin do
    resources :events
   end

   namespace :admin do
    resources :event_groups 
   end

   resources :events, only: [:index, :show]

   resources :event_groups, only: [:index, :show]
end
