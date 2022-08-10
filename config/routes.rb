Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      devise_for :users,
      controllers: {
          sessions: 'api/v1/users/sessions',
          registrations: 'api/v1/users/registrations'
      }
      get '/member-data', to: 'members#show'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

# Rails.application.routes.draw do
#   devise_for :users,
#              controllers: {
#                  sessions: 'users/sessions',
#                  registrations: 'users/registrations'
#              }
#   get '/member-data', to: 'members#show'
# end

# ec849952171999db7f2be3803ee0e954e8db99b60088cd2694d5f9da60aeb4d487bc798765a55bb4a5bfb04ba1c1178d5a55eb10fedeb0897c2190c5b638e87c

