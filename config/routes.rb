Rails.application.routes.draw do

  namespace :site do
    namespace :alcohols do
    end
  end
  get 'users', to: 'users#index'

  scope module: :site do
    root 'top#index'
    get 'mypage/:id', to: 'mypage#show', as: 'mypage'
    namespace :alcohols do
      get 'tops', to: 'top#index'
      get 'tops/:id', to: 'top#show', as: 'top', constraints: {id: /\d/}
      get 'tops/:id/review', to: 'top#review', as: 'top-review', constraints: {id: /\d/}
      get 'tops/search', to: 'top#search', as: 'top-search'
      get 'categories', to: 'category#index'
      get 'categories/:id', to: 'category#show', as: 'category', constraints: {id: /\d/}
      get 'rankings', to: 'ranking#index'
      get 'rankings/:id', to: 'ranking#show', as: 'ranking', constraints: {id: /\d/}
      get 'producing-areas', to: 'producing_area#index'
      get 'producing-areas/:id', to: 'producing_area#show',  as: 'producing_area', constraints: {id: /\d/}
      get 'new-arrivals', to: 'new_arrival#index'
      get 'new-arrivals/:id', to: 'new_arrival#show', as: 'new_arrival', constraints: {id: /\d/}
    end
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
