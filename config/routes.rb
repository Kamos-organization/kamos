Rails.application.routes.draw do

  get 'users', to: 'users#index'

  scope module: :site do
    root 'top#index'
    get 'mypage/:id/interests', to: 'mypage#interests', as: 'mypage_interests'
    get 'mypage/:id/favorites', to: 'mypage#favorites', as: 'mypage_favorites'
    get 'mypage/:id/recommends', to: 'mypage#recommends', as: 'mypage_recommends'
    get 'mypage/:id/histories', to: 'mypage#histories', as: 'mypage_histories'
    namespace :alcohols do
      get '', to: '#index'
      get ':alcohol_id', to: '#show', as: 'show', constraints: {id: /\d/}
      get ':alcohol_id/reviews/new', to: 'review#new', as: 'review-new', constraints: {alcohol_id: /\d/}
      post ':alcohol_id/reviews/create', to: 'review#create', as: 'review-create', constraints: {alcohol_id: /\d/}
      get 'search', to: '#search', as: 'search'
      get 'categories', to: 'category#index'
      get 'categories/:id', to: 'category#show', as: 'category', constraints: {id: /\d/}
      get 'rankings', to: 'ranking#index'
      get 'rankings/:id', to: 'ranking#show', as: 'ranking', constraints: {id: /\d/}
      get 'producing-areas', to: 'producing_area#index'
      get 'producing-areas/:id', to: 'producing_area#show',  as: 'producing_area', constraints: {id: /\d/}
      get 'new-arrivals', to: 'new_arrival#index'
      get 'new-arrivals/:id', to: 'new_arrival#show', as: 'new_arrival', constraints: {id: /\d/}
    end
    namespace :settings do
      get 'profile/show'
      get 'profile/edit'
      patch 'profile/update'
      get 'password/edit'
      patch 'password/update'
      get 'notification/show'
      patch 'notification/update'
    end
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
