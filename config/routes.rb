Rails.application.routes.draw do
  resources :projects
  get 'projects/custom2'
  resources :employees
end
