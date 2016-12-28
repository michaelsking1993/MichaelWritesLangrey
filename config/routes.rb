Rails.application.routes.draw do
  get 'welcome/index'
  get 'signup' => 'users#new'

  resources :users

  resources :texts do
    resources :annotations
  end

  root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
