require 'rails_helper'
require "support/helpers/auth_helper.rb"
describe ApiFlashcards::MainController, type: :controller do
  routes { ApiFlashcards::Engine.routes }
  before { http_login }
  it "should be successful" do
    get 'index'
    expect(response).to be_success
  end
end
