Rails.application.routes.draw do
  resources :burns
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'burns#index'

end
