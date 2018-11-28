<<<<<<< HEAD
Rails.application.routes.draw do    
  namespace :api do
        namespace :v1 do
              post 'user_token' => 'user_token#create'

              get '/user/transactions' => 'users#transactions'
              # get 'users/:id' => 'users#show'
              post '/users/create' => 'users#create'
              patch '/user/:id' => 'users#update'
              delete '/user/:id' => 'users#destroy'

              get '/coins/total' => 'coins#total'
              resources :coins, only: [:index, :show, :create, :destroy]

              resources :transactions, only: [:index, :show, :create]
        end
  end

end
=======
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :coins
    resources :transactions
  end
end

>>>>>>> 9568bf8e87d3e6ac8c2cfeae9ddc30c4f37c75d1
