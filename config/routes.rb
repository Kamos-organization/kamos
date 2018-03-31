Rails.application.routes.draw do
  namespace :site do
  end
  namespace :site do
    namespace :alcohol do
    end
  end
  namespace :site do
    namespace :alcohols do
    end
  end
  namespace :alcohols do
  end
  scope module: :site do
    root 'top#index'
    get 'mypage/:id', to: 'mypage#show', as: 'mypage', constraints: {id: /\d/}
    get 'alcohols', to: 'alcohol#index'
    get 'alcohols/:id', to: 'alcohol#show', as: 'alcohol', constraints: {id: /\d/}
    get 'alcohols/:id/review', to: 'alcohol#review', as: 'alcohol-review', constraints: {id: /\d/}
    get 'alcohols/search', to: 'alcohol#search', as: 'alcohol-search'
    get 'categories', to: 'category#index'
    get 'categories/:id', to: 'category#show', as: 'category', constraints: {id: /\d/}
    get 'rankings', to: 'ranking#index'
    get 'rankings/:id', to: 'ranking#show', as: 'ranking', constraints: {id: /\d/}
    get 'producing-areas', to: 'producing_area#index'
    get 'producing-areas/:id', to: 'producing_area#show', as: 'producing_area', constraints: {id: /\d/}
    get 'new-arrivals', to: 'new_arrival#index'
    get 'new-arrivals/:id', to: 'new_arrival#show', as: 'new_arrival', constraints: {id: /\d/}
  end

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
