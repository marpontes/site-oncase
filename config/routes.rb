Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users

  root to: 'static_pages#home'

  get '/produtos' => 'static_pages#products'
  get '/servicos' => 'static_pages#services'
  get '/conteudos' => 'static_pages#content'
  get '/sobre-nos' => 'static_pages#about_us'
  get '/contato' => 'static_pages#contact'

  resources :members
  resources :jobs
  resources :banners
  resources :tech_products
  resources :case_products
  resources :subscribers
end
