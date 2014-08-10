require 'rubygems'
require 'spork'
require 'rspec'

# SimpleCov
if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

require 'push_to_mobile'

Spork.prefork do
  RSpec.configure do |config|
    config.filter_run :focus => true
    config.run_all_when_everything_filtered = true
  end
end

Spork.each_run do

end
