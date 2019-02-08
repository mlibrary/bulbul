# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Bulbul
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Rails 5.1 from 5.0 updates
    Rails.application.config.active_record.belongs_to_required_by_default = true
    Rails.application.config.action_controller.per_form_csrf_tokens = true
    Rails.application.config.action_controller.forgery_protection_origin_check = true
    ActiveSupport.to_time_preserves_timezone = true
    Rails.application.config.ssl_options = { hsts: { subdomains: true } }
  end
end
