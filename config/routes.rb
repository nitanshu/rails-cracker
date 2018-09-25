Rails.application.routes.draw do
  # mount ModelInfo::Engine => '/model_info'
  resources :projects
  get 'projects/custom2'
  resources :employees

end
