$:.unshift(File.dirname(__FILE__) + "/lib")
require "mixlib/platform/version"

Gem::Specification.new do |spec|
  spec.name          = "mixlib-platform"
  spec.version       = Mixlib::Platform::VERSION
  spec.summary       = "A mixin for detecting the platform of a system"
  spec.description   = spec.summary
  spec.authors       = ["Tim Smith"]
  spec.email         = ["tsmith@chef.io"]
  spec.homepage      = "https://www.github.com/mixlib-platorm"
  spec.license       = "Apache-2.0"

  spec.files         = %w{LICENSE} + Dir.glob("lib/**/*")
  spec.test_files    = `git ls-files -- {spec}/*`.split("\n")
  spec.require_paths = %w{lib}

  spec.required_ruby_version = ">= 2.2.2"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_dependency 'mixlib-shellout' ">= 2.0"
end
