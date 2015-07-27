Rails.application.routes.draw do
  #resources :games, except: [:new, :edit]
  
  namespace :api, defaults: {format: :json} do 
    namespace :v1 do
      resources :games
    end
  end
end
