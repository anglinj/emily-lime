Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'

  get 'typeface' => 'typeface#index'
  get 'about' => 'about#index'

end