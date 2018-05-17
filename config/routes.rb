Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/websockets'

  namespace :api do
    jsonapi_resources :users
    jsonapi_resources :chatrooms
    jsonapi_resources :messages
  end

end
