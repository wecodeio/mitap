Rails.application.routes.draw do
  namespace :admin do
    resources :events 
   end

   resources :events, only: [:index, :show]
end
