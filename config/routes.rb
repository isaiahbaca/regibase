Rails.application.routes.draw do
  get '/api.js' => 'api#api'
  post '/api.js' => 'api#api'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


end
