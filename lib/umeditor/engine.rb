require_relative '../../app/helpers/umeditor_helper'
module Umeditor
  class Engine < ::Rails::Engine
    isolate_namespace Umeditor
    
    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w{ umeditor/application.css }
      Rails.application.config.assets.precompile += %w{ umeditor/application.js }
      Rails.application.config.assets.paths << root.join("app", "assets", "images")
    end
    
    initializer 'umeditor.setup_helpers' do |app|
      [UmeditorHelper].each do |h|
        app.config.to_prepare do
          ActionController::Base.send :helper, h
        end
      end
    end
  end
end

