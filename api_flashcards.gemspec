$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "api_flashcards/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "api_flashcards"
  s.version     = ApiFlashcards::VERSION
  s.authors     = ["Anton"]
  s.email       = ["lascivolin@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of ApiFlashcards."
  s.description = "Description of ApiFlashcards."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
