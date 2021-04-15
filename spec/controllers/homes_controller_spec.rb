# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomesController do
  describe 'GET /' do
    before { get :index }

    it 'returns http success' do
      expect(response).to have_http_status(:ok)
    end
  end
end
