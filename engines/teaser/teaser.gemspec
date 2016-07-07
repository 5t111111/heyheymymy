$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "teaser/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "teaser"
  s.version     = Teaser::VERSION
  s.authors     = ["Hirofumi Wakasugi"]
  s.email       = ["baenej@gmail.com"]
  s.homepage    = "http://teaser.example.com"
  s.summary     = "Mountable engine example"
  s.description = "Mountable engine example"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
end
