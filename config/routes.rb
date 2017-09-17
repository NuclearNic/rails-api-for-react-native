Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :api do
    namespace :v1 do
      post '/phone_data', to: 'phone_data#get_data'
    end
  end

end
