# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave-viewer/version'

Gem::Specification.new do |spec|
  spec.name          = "carrierwave-viewer"
  spec.version       = Carrierwave::Viewer::VERSION
  spec.authors       = ["GarPit"]
  spec.email         = ["garik.piton@gmail.com"]
  spec.description   = %q{Carrierwave integration with GroupDocs service}
  spec.summary       = %q{Carrierwave integration with GroupDocs service}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "carrierwave", [">= 0.6.2"]
  spec.add_dependency "groupdocs", "~> 1.3.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "webmock"
end
