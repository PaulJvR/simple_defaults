$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_defaults/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_defaults"
  s.version     = SimpleDefaults::VERSION
  s.authors     = ['Paul Janse van Rensburg']
  s.email       = ['pauljansevan@gmail.com']
  s.homepage    = "TODO"
  s.summary     = "Simple default values for Active Record models."
  s.description = "Allows the setting of default model values by simply creating a defaults method on a model which returns a hash of values."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"
  s.add_development_dependency "minitest-stub_any_instance"

  s.add_development_dependency "sqlite3"
end