Carpool::Application.routes.draw do
  get "dashboard/index"
  resources :profiles

  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :friendships do 
   member do

     post :accept
     get :accept

     post :reject
     get :reject

    end

  end
  root :to => 'dashboard#index'
end
