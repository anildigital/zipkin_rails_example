# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

config = {
  service_name: 'Zipkin Rails Example',
  service_port: 3000,
  sample_rate: 1,
  json_api_host: "http://localhost:9411"
}

use ZipkinTracer::RackHandler, config

run Rails.application
