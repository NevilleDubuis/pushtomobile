#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'yard'
require 'rspec/core/rake_task'


desc 'Default: run specs.'
task :default => :spec

desc 'run rspec tests'
RSpec::Core::RakeTask.new(:spec)

desc 'Generate Yard doc'
YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']
  t.options = [
    '--title',   'PushToMobile',
    '--markup',  'markdown',
    '--charset', 'UTF-8',
    '--file',    'LICENSE',
    '--protected',
    '--private'
  ]
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end
