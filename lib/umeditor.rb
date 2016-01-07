require "rails"
require 'action_controller'
require 'active_support/all'
require_relative 'umeditor/version'
require_relative 'umeditor/view_helpers'
require_relative "umeditor/engine"
module Umeditor
end

ActionController::Base.send :helper, Umeditor::ViewHelpers