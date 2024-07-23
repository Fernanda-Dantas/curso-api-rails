Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  #  resources :auths, only: [:create]
  resources :kinds
  # atalho dos recursos. É o que eu vou trabalhar. O nome do recurso deve estar no plural.
  api_version(:module => "v1", :header => {:name => "X-Version", :value => "1.0"}) do
    resources :contacts do

      resource :kind, only: [:show]
      resource :kind, only: [:show], path: 'relationships/kind'

      resource :phones, only: [:show]
      resource :phones, only: [:show], path: 'relationships/phones'

      resource :phone, only: [:update, :create, :destroy]
      resource :phone, only: [:update, :create, :destroy], path: 'relationships/phones'

      resource :address, only: [:show, :update, :create, :destroy]
      resource :address, only: [:show, :update, :create, :destroy], path: 'relationships/address'
    end
  end

  api_version(:module => "v2",  :header => {:name => "X-Version", :value => "2.0"}) do
    resources :contacts do

      resource :kind, only: [:show]
      resource :kind, only: [:show], path: 'relationships/kind'

      resource :phones, only: [:show]
      resource :phones, only: [:show], path: 'relationships/phones'

      resource :phone, only: [:update, :create, :destroy]
      resource :phone, only: [:update, :create, :destroy], path: 'relationships/phones'

      resource :address, only: [:show, :update, :create, :destroy]
      resource :address, only: [:show, :update, :create, :destroy], path: 'relationships/address'
    end
  end

end
