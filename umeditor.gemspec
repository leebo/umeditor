$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "umeditor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "umeditor"
  s.version     = Umeditor::VERSION
  s.authors     = ["ysllyfe"]
  s.email       = ["ysllyfe@163.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Umeditor."
  s.description = "TODO: Description of Umeditor."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
