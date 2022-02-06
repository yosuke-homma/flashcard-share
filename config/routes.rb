Rails.application.routes.draw do
  root 'prelogin_pages#home'
  get 'prelogin_pages/about'
  get 'prelogin_pages/help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
