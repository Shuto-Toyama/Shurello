require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Shurello
  class Application < Rails::Application
    config.load_defaults 6.0
    config.i18n.default_locale = :ja
    config.time_zone = "Asia/Tokyo"
  end
end
