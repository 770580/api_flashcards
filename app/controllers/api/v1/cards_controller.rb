require_dependency "api_flashcards/application_controller"

module ApiFlashcards
  class Api::V1::CardsController < ApplicationController

    def index
     #  respond_with User.find(params[:id])
      Cards.all
    end
  end
end
