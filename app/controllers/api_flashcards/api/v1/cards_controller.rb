require_dependency "api_flashcards/application_controller"

module ApiFlashcards
  class Api::V1::CardsController < ApplicationController

    def index
      render json: Card.all
    end

    def create
      card = Card.new(card_params)
      card.update(user: user, block: block)
      if card.save
        render json: card, status: 201
      else
        render json: { errors: user.errors }, status: 422
      end
  end

  private

    def user_params
      params.require(:card).permit(:original_text, :translated_text, :block_id)
    end
  end
end
