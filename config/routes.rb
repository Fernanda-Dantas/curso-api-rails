Rails.application.routes.draw do
  resources :kinds
  # atalho dos recursos. É o que eu vou trabalhar. O nome do recurso deve estar no plural.
  resources :contacts do

    resource :kind, only: [:show]
    resource :kind, only: [:show], path: 'relationships/kind'

    resource :phones, only: [:show]
    resource :phones, only: [:show], path: 'relationships/phones'

    resource :address, only: [:show]
    resource :address, only: [:show], path: 'relationships/address'
  end


end
