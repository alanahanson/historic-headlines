Rails.application.routes.draw do
  root 'articles#index'

  get '/search' => 'articles#search'
end
