Rails.application.routes.draw do
  devise_for :users
  root "articles#index"
  resources :articles

=begin
  get '/articles',
      to: 'articles#index',
      as: 'articles'
  post '/articles',
      to: 'articles#create'
  get '/articles/new',
      to: 'articles#new',
      as: 'new_article'
  get 'articles/:id',
      to: 'articles#show',
      as: 'article'
  delete '/articles/:id',
      to: 'articles#destroy'
=end
end
