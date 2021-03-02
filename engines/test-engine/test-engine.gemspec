# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "test-engine/version"

# We store Rails version in the project's root to share between gems
rails_version = File.read(File.join(__dir__, "../../.rails-version"))

Gem::Specification.new do |s|
  s.name = "test-engine"
  s.version = TestEngine::VERSION
  s.authors = ["Vicinity"]
  s.summary = "TODO:"

  s.files = Dir["{app,config,db,lib}/**/*"]
  s.require_paths = ["lib"]

  s.add_dependency "rails", rails_version
  s.add_dependency "pg", "~> 1.0"

  s.add_development_dependency "brakeman", "~> 4.7"
  s.add_development_dependency "bundler", ">= 2.0"
  s.add_development_dependency "pry-byebug", ">= 3.4"
  s.add_development_dependency "rake", "~> 13.0"

  # Internal
  s.add_development_dependency "shared-rubocop"
  s.add_development_dependency "shared-testing"
end
