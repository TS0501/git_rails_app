Rails.application.routes.draw do
  root to: 'taskboards#index'
  resources :taskbards
end
