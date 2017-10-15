Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users,     only: [:create]
      resources :hotspots,  only: [:index, :show] do
        resource :visit, only: [:create]
      end
    end
  end
end
