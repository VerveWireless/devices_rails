$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devices_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devices_rails"
  s.version     = DevicesRails::VERSION
  s.authors     = ["Jeff Cooper"]
  s.email       = ["jeff@cuperman.net"]
  # s.homepage    = "TODO"
  s.summary     = "Summary of DevicesRails."
  s.description = "Description of DevicesRails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
