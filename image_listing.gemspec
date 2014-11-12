# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'image_listing/version'

Gem::Specification.new do |spec|
  spec.name          = "image_listing"
  spec.version       = ImageListing::VERSION
  spec.authors       = ["anthony de silva"]
  spec.email         = ["anthony@iamfree.com"]
  spec.summary       = %q{Gets a list of largest images from a web page}
  spec.description   = %q{Image finder goes to the given web page and gets a list of largest images on that page}
  spec.homepage      = %q{https://github.com/iamfree-com/image_listing}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
