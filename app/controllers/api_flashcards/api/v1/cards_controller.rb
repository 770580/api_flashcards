require_dependency "api_flashcards/application_controller"

module ApiFlashcards
  class Api::V1::CardsController < ApplicationController
  skip_before_action :verify_authenticity_token

    def index
      render json: card_user.cards.all
    end

    def show
      card = card_user.cards.find(params[:id])
      render json: card
    end

    def create
      card = Card.new(card_params)
      card.update(user: card_user, block: card_block)
      if card.save
        render json: card, status: 201
      else
        render json: { errors: card.errors }, status: 422
      end
  end

  private

    def card_user
      User.find_by_email(params['email'])
    end

    def card_block
      Block.find_by_title(params['block_name'])
    end

    def card_params
      params.require(:card).permit(:id, :original_text, :translated_text, :user_id, :block_id)
    end
  end
end
