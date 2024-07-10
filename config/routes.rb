Rails.application.routes.draw do
  resources :kinds
  # atalho dos recursos. É o que eu vou trabalhar. O nome do recurso deve estar no plural.


  resources :contacts do
    resource :kind, only: [:show]
    resource :kind, only: [:show], path: 'relationships/kind'
  end

  get "up" => "rails/health#show", as: :rails_health_check


end
