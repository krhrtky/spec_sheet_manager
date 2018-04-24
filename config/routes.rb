Rails.application.routes.draw do
  resources :users, :projects
  post '/users/confirm' => 'users#confirm'
  post '/projects/confirm' => 'projects#confirm'
end
