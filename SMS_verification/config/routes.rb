Rails.application.routes.draw do
  root 'users#new'
  resources :users
  post 'phone_verifications/verify_from_message' => 'phone_verifications#verify_from_message'
end
