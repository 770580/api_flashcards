require_dependency "api_flashcards/application_controller"

module ApiFlashcards
  class Api::V1::TrainerController < ApplicationController
    def index
      render json: card_user.cards.pending
    end

    def review_card
      
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