Rails.application.routes.draw do

  get 'authors/index'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: 'home#index'

  concern :image_attachable do
    get 'custom2', as: 'chutiya' , default: {format: 'json'}
  end
  namespace 'admin'  do
    resource :employees do
      resources :projects, shallow: true, concerns: :image_attachable
    end
  end
  scope :shaakaal do
    resources :authors
  end
  resources :employees do
    get 'preview', on: :member
  end

  scope :beer do
    %w(corona kingfisher).each do |beer|
      get beer, controller: :projects
    end
  end
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
