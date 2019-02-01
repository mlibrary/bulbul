# frozen_string_literal: true

require 'rails_helper'

describe 'Routes', type: :routing do
  describe '/' do
    it 'is successful' do
      expect(get: '/hello').to route_to(controller: 'hello', action: 'show')
    end
  end
end
