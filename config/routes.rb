Rails.application.routes.draw do
  namespace :admin do
    resources :posts

    root 'posts#index'
  end

  resources :posts, only: :show do
    get :preview, on: :member
  end
end
