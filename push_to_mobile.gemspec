# -*- encoding: utf-8 -*-
require File.expand_path('../lib/push_to_mobile/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Néville Dubuis']
  gem.email         = ['neville.dubuis@gmail.com']
  gem.description   = %q{Push notification to GCM and APN services}
  gem.summary       = %q{Push notification to GCM and APN services}
  gem.homepage      = 'http://rubygems.org/gems/gcal_mapper'

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'push_to_mobile'
  gem.require_paths = ['lib']
  gem.version       = PushToMobile::VERSION

  gem.add_development_dependency 'rspec',   '>= 2.0'
end
