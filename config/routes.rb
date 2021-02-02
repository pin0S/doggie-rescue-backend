Rails.application.routes.draw do
  
  scope '/api' do
    resources :pets
    scope '/user' do
      resources :preferences
    end
    scope '/auth' do
      post '/sign_up', to: 'users#create'
      post '/sign_in', to: 'users#sign_in'
    end
  end

end
