Rails.application.routes.draw do
  resources :mentions_legales
  resources :cgus
  resources :faqs
  resources :contacts
  resources :freelances
  resources :portfolios
  resources :resumes
  resources :homes

  root to: 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
