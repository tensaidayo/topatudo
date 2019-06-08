Rails.application.routes.draw do
  devise_for :users
  resources :messages do
  collection do
    get 'homepage'
  end
end

    root 'messages#homepage'
end
