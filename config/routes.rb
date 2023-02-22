Rails.application.routes.draw do
  root "events#index"
  devise_for :users
  resources :attendances
  resources :events
  resources :users, only: [:index, :show, :edit, :update] # only index show edit update

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
	end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
