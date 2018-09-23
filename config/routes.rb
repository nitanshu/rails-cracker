Rails.application.routes.draw do
# scope shallow_prefix: 'nit' do
#     resource :employees do
#       resources :projects, shallow: true
#     end
#     end
  # resolve('Project') { [:projects] }

  # resources :employees

  resources :employees do
      get 'preview'
  end
end
