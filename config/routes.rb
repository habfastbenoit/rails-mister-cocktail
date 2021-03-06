Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, except: [ :new, :create ]
  post "doses" => 'doses#create'
  resources :ingredients
  mount Attachinary::Engine => "/attachinary"

  get '/', to: 'cocktails#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
