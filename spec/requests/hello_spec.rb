# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Hello', type: :request do
  describe 'GET /hello' do
    it do
      get hello_path
      expect(response).to have_http_status(:ok)
    end
  end
end
