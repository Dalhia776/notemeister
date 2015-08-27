Rails.application.routes.draw do
  resources :tags, except: [:new, :edit]
  resources :notes, except: [:new, :edit]
  resources :taggings, except: [:new, :edit]


  root 'notes#index'
  

end
