# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_riddler'
  s.version     = '2.1.3'
  s.summary     = 'Spree and Sphinx integration'
  s.description = 'This is teh stuffs.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Scotty Weeks [Gin Lane]'
  s.email     = 'scotty@ginlanemedia.com'
  s.homepage  = 'http://github.com/ginlane/spree_riddler'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1.3'
  s.add_dependency 'thinking-sphinx', '~> 3.0.6'
  s.add_dependency 'mysql2'
  s.add_dependency 'active_model_serializers', "~>0.8.0"

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-rspec'
  # s.add_development_dependency 'mocha'
end
