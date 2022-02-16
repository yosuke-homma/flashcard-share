Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }
  root 'prelogin_pages#home'
  get '/about', to: 'prelogin_pages#about'
  get  '/help', to: 'prelogin_pages#help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
