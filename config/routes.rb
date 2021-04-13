Rails.application.routes.draw do
  root 'messages#index'
  resources :messages do
    resources :likes, only: [:create]
  end

  delete 'message/:message_id', to: "likes#destroy", as: "unlike"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
