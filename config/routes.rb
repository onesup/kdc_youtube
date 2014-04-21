Rails.application.routes.draw do

  namespace :admin do
    get '/' => 'dashboard#index'
    resources :traffic_logs do
      member do
        get 'logs'
      end
    end
    resources :users
    resources :viral_actions 
  end

  namespace :fb do
    post 'create' => 'home#create'
    get 'index' => 'home#index'
    resources :users
  end
  
  namespace :pc do
    get 'index' => 'home#index'
    resources :users do
      collection do
        get 'delete'
      end
    end
  end
  
  namespace :mobile do
    get 'index' => 'home#index'
    get 'thank_you' => 'home#thank_you'
    get 'unique_error' => 'home#unique_error'
    get 'terms' => 'home#terms'
    get 'product' => 'home#product'
    resources :users
  end
  
  resources :viral_actions

  get 'web_switch' => 'web_switch#index'
  get 'fb_switch' => 'fb_switch#index'

  root 'web_switch#index'

  # resources :users
  devise_for :users
end