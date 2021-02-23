Rails.application.routes.draw do
  scope :pages, controller: :pages do
    get 'home'
    get 'about'
    get 'contacts'
  end
  resources :posts
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
