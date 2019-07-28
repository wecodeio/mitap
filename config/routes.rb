Rails.application.routes.draw do
   namespace :admin do
    resources :events
   end

   namespace :admin do
    resources :events_groups 
   end

   resources :events, only: [:index, :show]

   resources :events_groups, only: [:index, :show]
end
