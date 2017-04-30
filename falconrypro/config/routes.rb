Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # namespace :api do
  #   namespace :v1 do
  #     mount_devise_token_auth_for 'User', at: 'auth'
  #   end
  # end

  mount_devise_token_auth_for 'User', at: 'api/v1/auth' , controllers: {
    omniauth_callbacks: 'omniauth_callbacks'
  }

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users
      resources :foods
      resources :diary_items
      resources :birds
      resources :bird_types
    end
  end

  get 'pages/home' => 'high_voltage/pages#show', id: 'home'

end
