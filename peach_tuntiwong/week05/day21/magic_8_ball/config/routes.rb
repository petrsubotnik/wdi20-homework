Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: "magic#index"
  get '/show', to: "magic#show"

end
