Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# get '/agents', to: 'agents#index'
# get '/agents/', to: 'agents#show'
resources :agents, :sellers, :propertyshowings, :users

#post'/agents/:id', to: 'agent#index' as: 

end
