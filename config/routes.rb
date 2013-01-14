Kittybase::Application.routes.draw do
  get "pictures/show"

  get "pictures/destroy"

  get "pictures/new"

  get "sessions/new"

  get "users/new"

  get "pages/home"

  #get "kitties/:id/carouselitems"

  resources :users
  resources :kitties do
    member do
      get 'carouselitems'
    end
  end
  resources :pictures do
   member do
     get 'make_profile_pic'
   end
  end

  resources :sessions, :only => [:new, :create, :destroy]


  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match '/about', :to => 'pages#about'


root :to => 'pages#home'
end
