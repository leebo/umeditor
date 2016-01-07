$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "umeditor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "umeditor"
  s.version     = Umeditor::VERSION
  s.authors     = ["ysllyfe"]
  s.email       = ["ysllyfe@163.com"]
  s.homepage    = "https://github.com/ysllyfe/Umeditor-Rails"
  s.summary     = "TODO: Summary of Umeditor."
  s.description = "TODO: Description of Umeditor."
  s.license     = "MIT"
  s.require_paths = ['lib']
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "mini_magick"
  s.add_dependency "carrierwave"
  s.add_dependency "carrierwave-imageoptimizer"
  s.add_dependency "moo"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "moo"
end
