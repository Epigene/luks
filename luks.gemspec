# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'luks/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2'
  spec.date          = Date.today.to_s
  spec.name          = "luks"
  spec.version       = Luks::VERSION
  spec.authors       = ["Epigene"]
  spec.email         = ["augusts.bautra@gmail.com"]

  spec.summary       = %q{Use colorful puts alternatives!}
  spec.description   = %q{A zero-dependency gem for colorful puts variants.}
  spec.homepage      = "https://github.com/Epigene/luks"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
