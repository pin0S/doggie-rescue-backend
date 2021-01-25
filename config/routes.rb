Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # resources :users
  resources :pets
  
  scope '/auth' do
    post '/signin', to: 'user_token#create'
    post '/signup', to: 'users#create'
  end

end
