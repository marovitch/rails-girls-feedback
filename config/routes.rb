Rails.application.routes.draw do
  resources :answers, except: [:show, :delete, :update]
  root 'answers#new'
end
