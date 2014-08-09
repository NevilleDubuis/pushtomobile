require 'rubygems'
require 'spork'
require 'rspec'

# SimpleCov
if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

Spork.prefork do
  RSpec.configure do |config|
    config.filter_run :focus => true
    config.treat_symbols_as_metadata_keys_with_true_values = true
    config.run_all_when_everything_filtered = true
  end
end

Spork.each_run do

end
