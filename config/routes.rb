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
