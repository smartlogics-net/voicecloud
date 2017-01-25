Rails.application.routes.draw do
# get 'welcome/index'
  resources :instances

  root 'welcome#index'
end
