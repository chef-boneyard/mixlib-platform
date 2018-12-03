# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mixlib/platform/version"

Gem::Specification.new do |spec|
  spec.name          = "mixlib-platform"
  spec.version       = Mixlib::Platform::VERSION
  spec.authors       = ["Tim Smith"]
  spec.email         = ["tsmith@chef.io"]

  spec.summary       = "A mixin for detecting the platform of a system"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
end
