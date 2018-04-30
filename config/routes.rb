Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static_pages#home'

  get '/solucoes' => 'static_pages#solutions'
  get '/servicos' => 'static_pages#services'

  namespace :admin do
    resources :pages
  end
end
