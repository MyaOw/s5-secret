Rails.application.routes.draw do
  resources :users
  root    'users#home'
  get     '/secret',      to: 'users#secret_page',  as: 'secret'
  get     '/new',         to: 'users#new',          as: 'signup'
  post    '/users/new',   to: 'users#create'
  get     '/users/edit',  to: 'users#edit'
  patch   '/users/:id/edit',  to: 'users#edit'
  get     '/login',       to: 'sessions#new',       as: 'login'
  post    '/login',       to: 'sessions#create'
  delete  '/logout',      to: 'sessions#destroy'
  get     '/users/:id',   to: 'users#show',         as: 'show'
  patch   '/users/:id',   to: 'users#update'
  put     '/users/:id',   to: 'users#update'
  delete  '/users/:id',   to: 'users#destroy'
end
