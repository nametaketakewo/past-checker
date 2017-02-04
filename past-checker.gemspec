$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "past/checker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "past-checker"
  s.version     = Past::Checker::VERSION
  s.authors     = ["Harutaka Takeuchi"]
  s.email       = ["nametaketakewo@icloud.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Past::Checker."
  s.description = "TODO: Description of Past::Checker."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
end
