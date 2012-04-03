$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jpp_customercode_transfer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jpp_customercode_transfer"
  s.version     = JppCustomercodeTransfer::VERSION
  s.authors     = ["Akifumi NAKAMURA"]
  s.email       = ["tmpz84@gmail.com"]
  s.homepage    = "https://github.com/tmpz84/jpp_customercode_transfer"
  s.summary     = "transfer address to japan postal customercode."
  s.description = "transfer address to japan postal customercode."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.3"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
