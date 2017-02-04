$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "past/checker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "past-checker"
  s.version     = Past::Checker::VERSION
  s.authors     = ["Harutaka Takeuchi"]
  s.email       = ["nametaketakewo@icloud.com"]
  s.homepage    = "https://github.com/nametaketakewo/past-checker"
  s.summary     = "You can check if DateTime is past."
  s.description = "You can check if DateTime is past."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
