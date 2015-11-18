require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

# Prepare app
require_relative '../bin/app'

# Prepare test environment
require 'rack/test'
