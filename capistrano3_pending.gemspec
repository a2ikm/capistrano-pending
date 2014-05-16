# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano3_pending/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano3_pending"
  spec.version       = Capistrano3Pending::VERSION
  spec.authors       = ["Masato Ikeda"]
  spec.email         = ["masato.ikeda@gmail.com"]
  spec.summary       = %q{Provide deploy:pending task to Capistrano 3.}
  spec.description   = %q{Provide deploy:pending task to Capistrano 3 to show commit logs between current revision and deploying branch.}
  spec.homepage      = "https://github.com/a2ikm/capistrano3_pending"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "=> 3.2.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
