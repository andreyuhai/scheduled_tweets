Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

  # If you do this then you need to link to about_us_path
  # get 'about-us', to: 'about#index'

  # or you can change the path by using below and name would remain the same
  # get 'about-us', to: 'about#index', as: :about

  get 'about', to: 'about#index'

  # To set the root, you can use either this
  # get '/', to: 'main#index'
  # or this
  # get '', to: 'main#index'
  # or this
  root to: 'main#index'

  # Registration
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  # Log in/Sign in
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  # Log out
  delete 'logout', to: 'sessions#destroy'

  # Update password
  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  # Create a user password reset for forgotten password
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'

  # Reset forgotten password
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  # Twitter callback
  get 'auth/twitter/callback', to: 'omniauth_callbacks#twitter'

  resources :twitter_accounts
  resources :tweets
end
