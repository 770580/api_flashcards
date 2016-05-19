ApiFlashcards::Engine.routes.draw do
  root 'main#index'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :cards, only: [:index]
    end
  end
end
