Rails.application.routes.draw do
  resources :users, :projects
  post '/users/confirm' => 'users#confirm'
end
