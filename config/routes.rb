ApiFlashcards::Engine.routes.draw do
  root 'main#index'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post '/' => 'api#index'
      resources :cards, only: [:index, :create, :show]
      get 'trainer' => 'trainer#index'
      post 'trainer' => 'trainer#review_card'
    end
  end
end
