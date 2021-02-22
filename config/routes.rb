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
end
