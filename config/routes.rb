Rails.application.routes.draw do

  # resources :comments

  get 'static_pages/root'

  resources :workouts do
    resources :comments, :only => [:create]
  end

  resources :races

  devise_for :users
  root 'static_pages#root'
  resources :users

      # devise_for :users, controllers: {
      #   sessions: 'users/sessions'
      # }

end
