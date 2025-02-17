# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Include each railtie manually, excluding unwanted ones:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_cable/engine'
require 'action_mailer/railtie' 
require 'action_mailbox/engine' # Not needed for API only
# require 'action_text/engine'    # Not needed for API only
# require 'action_view/railtie'   # Not needed for API only
# require 'rails/test_unit/railtie' # Not needed unless you use Rails tests

Bundler.require(*Rails.groups)

module Danceter
  class Application < Rails::Application
    config.load_defaults 7.2

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    config.api_only = true
  end
end
# Remove these gems:
# gem 'sass-rails', 'coffee-rails', 'uglifier', 'webpacker', 'jbuilder'