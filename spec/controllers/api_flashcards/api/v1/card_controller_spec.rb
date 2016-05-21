require 'rails_helper'
require "support/helpers/auth_helper.rb"

describe ApiFlashcards::Api::V1::CardsController, type: :controller do
  routes { ApiFlashcards::Engine.routes }
  before { http_login }
  it "should be successful" do
    get 'index'
    expect(response).to be_success
  end
end
