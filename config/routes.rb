Rails.application.routes.draw do
  # routing for admin user
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # routing for devise
  devise_for :users, skip: 'sessions', controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  devise_scope :user do
    get	'/users/sign_in', to: 'users/sessions#new', as: :new_user_session
    post	'/users/sign_in', to: 'users/sessions#create', as: :user_session
    get	'/users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end

  # Defines the root path route ("/")
  root "home#index"

  # search item
  get '/search', to: 'items#search', as: :search

  # maker list page
  get '/makers', to: 'makers#index', as: :makers

  # item list by category
  get '/categories/:id', to: 'categories#all_items', as: :all_items_by_category

  # item list by maker
  get '/makers/:id', to: 'makers#all_items', as: :all_items_by_maker

  # item detail
  get '/items/:id', to: 'items#show', as: :show_item

  # like item
  post '/items/:id/like', to: 'items#like_item', as: :like_item

  # remove liked item
  post '/items/:id/like/remove', to: 'items#remove_liked_item', as: :remove_liked_item

  # new review form
  get '/items/:id/review/new', to: 'reviews#new', as: :new_review

  # review item
  post '/items/:id/review', to: 'reviews#create', as: :review_item
end
