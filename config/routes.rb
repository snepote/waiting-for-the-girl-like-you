Rails.application.routes.draw do
  resources :guests
  root 'static_pages#home'
end
