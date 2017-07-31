# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

use ZipkinTracer::RackHandler

run Rails.application
