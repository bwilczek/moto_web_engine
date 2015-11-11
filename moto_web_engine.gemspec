$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "moto_web_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "moto_web_engine"
  s.version     = MotoWebEngine::VERSION
  s.authors     = ["Bartek Wilczek"]
  s.email       = ["bwilczek@gmail.com"]
  s.homepage    = "https://github.com/bwilczek/moto_web_engine"
  s.summary     = "Rails engine to log and present executions of tests in moto framework."
  s.description = "This application acts as a REST service to store in the database execution results produced on the fly by Moto::Listeners::Webui. It also provides a web interface for these results."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency 'mysql2', '~> 0.3.18'
end
