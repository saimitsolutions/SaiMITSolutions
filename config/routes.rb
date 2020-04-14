Rails.application.routes.draw do
  
  root 'home#index'
  resources :contacts, only: [:new, :create]

  get '/about', to: 'home#about', as: :about
  get '/customization', to: 'home#customization', as: :customization
  get '/integration', to: 'home#integration', as: :integration
  get '/migration', to: 'home#migration', as: :migration
  get '/contacts/new', to: 'contacts#new', as: :contactus

end  