Rails.application.routes.draw do
  scope module: :site do
    root 'top#index'
    get 'mypage/:id', to: 'mypage#show', as: 'mypage'
    get 'alcohols', to: 'alcohol#index'
    get 'alcohols/:id', to: 'alcohol#show', as: 'alcohol'
    get 'alcohols/:id/review', to: 'alcohol#review', as: 'alcohol-review'
  end

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
