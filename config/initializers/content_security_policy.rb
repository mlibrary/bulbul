# frozen_string_literal: true

Rails.application.config.content_security_policy do |policy|
  # For bin/webpack-dev-server
  policy.connect_src :self, :https, "http://localhost:3035", "ws://localhost:3035" if Rails.env.development?
end
