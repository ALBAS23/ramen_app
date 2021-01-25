Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations'
  }
  root to: 'posts#top'
  resources :posts do
    collection do
      get 'top'
    end
  end
end
