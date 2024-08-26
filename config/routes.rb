Rails.application.routes.draw do
  resources :comapnies

  get 'authors/index'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: 'home#index'

  concern :image_attachable do
    get 'preview_image', as: 'attach_image', default: { format: 'json' }
  end

  namespace 'admin' do
    resource :employees do
      resources :projects, shallow: true, concerns: :image_attachable
    end
  end
  resources :employees do
    get 'preview', on: :member
  end

  scope :shaakaal do
    resources :authors, shallow: true
  end

  scope :beer do
    %w(corona kingfisher).each do |beer|
      get beer, controller: :projects
    end
  end

  scope '/admin', as: :colab do
    resources :articles
  end

  scope module: 'admin' do
    resources :customer
  end

  resources :images do
    get 'display', on: :member
    get 'preview'
    collection do
      get 'search'
    end
  end

  resources :suppliers, path: '/admin/suppliers'

  resources :projects
  resolve('Project') { [:project] }

  direct :main do
    { controller: 'authors', action: 'index', subdomain: 'www' }
  end

  direct :homepage do 
    'mylink'
  end

  resources :categories, path: 'kategorien', path_names: { new: 'neu', edit: 'bearbeiten' }
  resources :orders, shallow: false
end
