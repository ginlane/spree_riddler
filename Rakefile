require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
require 'spree/testing_support/extension_rake'

RSpec::Core::RakeTask.new

task :default => [:spec]

desc 'Generates a dummy app for testing'
task :test_app do
  ENV['LIB_NAME'] = 'spree_riddler'
  ENV['DB']       = 'mysql'
  Rake::Task['extension:test_app'].invoke
  # both test and dev envsszzzzz
  system({ "RAILS_ENV" => "test" }, "bundle exec rake ts:configure ts:generate")
  system({ "RAILS_ENV" => "development" }, "bundle exec rake ts:configure ts:generate")
end
