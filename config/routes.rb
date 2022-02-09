Rails.application.routes.draw do
  root 'prelogin_pages#home'
  get '/about', to: 'prelogin_pages#about'
  get  '/help', to: 'prelogin_pages#help'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
