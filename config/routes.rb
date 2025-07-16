Rails.application.routes.draw do
  
  get "up" => "rails/health#show", as: :rails_health_check

  resources :quadras, only: [:index, :show, :create, :update, :destroy]
end
