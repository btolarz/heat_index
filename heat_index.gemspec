$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "heat_index/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "heat_index"
  s.version     = HeatIndex::VERSION
  s.authors     = ["Boguslaw Tolarz"]
  s.email       = ["btolarz@gmail.com"]
  s.homepage    = "https://github.com/btolarz/heat_index"
  s.summary     = "Summary of HeatIndex."
  s.description = "Description of HeatIndex."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_development_dependency "minitest", "~> 5.8"
  s.add_development_dependency "minitest-reporters", "~> 1.1"
  s.add_development_dependency "simplecov", "~> 0.14.1"
end
