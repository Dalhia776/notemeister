Rails.application.routes.draw do
  resources :tags, except: [:new, :edit]
  resources :notes, except: [:new, :edit]


  root 'notes#index'


end
