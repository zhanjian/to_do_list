Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: {format: :json} do
    devise_scope :user do
      resource :session, only: [:create, :destroy]
    end
    resources :task_lists, only: [:show] do
    end
  end

  root :to => "home#index"
  get '/dashboard' => 'templates#index'
end
