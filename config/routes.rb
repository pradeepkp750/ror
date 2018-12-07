Rails.application.routes.draw do
  resources :pradeeps
  root to: "pradeeps#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
