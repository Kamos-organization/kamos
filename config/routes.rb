Rails.application.routes.draw do
  scope module: :site do
    root 'top#index'
    get 'mypage/:id', to: 'mypage#show', as: 'mypage', constraints: {id: /\d/}
    get 'alcohols', to: 'alcohol#index'
    get 'alcohols/:id', to: 'alcohol#show', as: 'alcohol', constraints: {id: /\d/}
    get 'alcohols/:id/review', to: 'alcohol#review', as: 'alcohol-review', constraints: {id: /\d/}
    get 'alcohols/search', to: 'alcohol#search', as: 'alcohol-search'
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
