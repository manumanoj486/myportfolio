Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  resources :portfolios, except: [:show]

  

  get "portfolio/:id", to: "portfolios#show", as: "portfolio_show"
  root to: "pages#home"

  get 'about', to:"pages#about"
  get 'contact', to: "pages#contact"

  resources :blogs do
    member do
      put 'toggle_status', to: "blogs#toggle_status" ,as: "toggle_status"
    end  
  end  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
