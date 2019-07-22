Rails.application.routes.draw do
  namespace :admin do
    resources :events 
   end
end
