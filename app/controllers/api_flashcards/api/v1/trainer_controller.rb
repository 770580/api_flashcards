require_dependency "api_flashcards/application_controller"

module ApiFlashcards
  class Api::V1::TrainerController < ApplicationController

    def index
      render json: card_user.cards.pending
    end

    def review_card
      card = card_user.cards.find(params[:id])
      user_translation = params[:user_translation]
      check_result = card.check_translation(user_translation)
      if check_result[:state]
        if check_result[:distance] == 0
          render json: { card: card, result: "correct" }
        else
          render json: { card: card, result: "misprint" }
        end
      else
        render json: { card: card, result: "incorrect" }
      end
    end

    private

    def card_user
      User.find_by_email(params['email'])
    end

    def card_block
      Block.find_by_title(params['block_name'])
    end
  end
end
