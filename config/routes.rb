Rails.application.routes.draw do
  resources :users, :projects
  get '/' => 'index#index'
  post '/users/confirm' => 'users#confirm'
  post '/projects/confirm' => 'projects#confirm'
end
