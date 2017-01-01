Rails.application.routes.draw do
  root 'static_pages#home'
  get  'wedding' =>  'static_pages'
  get  'couple' =>  'static_pages'
  get  'parallax' =>  'static_pages'
  get  'about'   =>  'static_pages'
end
