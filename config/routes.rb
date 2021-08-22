Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'dashboard', to: 'dashboard#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Grape Swagger
  mount GrapeSwaggerRails::Engine, at: "/documentations"
  mount Api::Base, at: "/"
end
