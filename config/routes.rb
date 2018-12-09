Rails.application.routes.draw do

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  concern :image_attachable do
    get 'custom2'
  end
  namespace 'admin'  do
    resource :employees do
      resources :projects, shallow: true, concerns: :image_attachable
    end
  end
  resources :employees
  # resolve('Project') { [:projects] }

  # resources :employees
  #
  # resources :employees do
  #     get 'preview'
  # end

  # mount ModelInfo::Engine => '/model_info'
  # resources :projects
  # resolve('Project'){[:project]}

end
