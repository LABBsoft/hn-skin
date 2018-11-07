Rails.application.routes.draw do
  get 'new/', to: 'home#new'
  get 'best/', to: 'home#best' 

  root 'home#index'
end
