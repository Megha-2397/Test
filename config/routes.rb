Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: "registrations"}

  devise_scope :user do
    get    '/registrations/change_password',  to: 'registrations#change_password',  as: :change_password
    put    '/registrations/:id/changed_password',  to: 'registrations#changed_password',  as: :changed_password
  end

  resources :posts
  resources :post_comments
  root 'homes#index'
end
