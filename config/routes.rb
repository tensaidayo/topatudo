Rails.application.routes.draw do
  devise_for :users do
    devise_scope :users do
      get '/users/sign_out' => 'devise/session#destroy'
    end
end
  resources :messages do
    collection do
      get 'homepage'
    end
  end

    root 'messages#homepage'
end
