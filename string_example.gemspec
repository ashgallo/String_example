
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "string_example/version"

Gem::Specification.new do |spec|
  spec.name          = "string_example"
  spec.version       = StringExample::VERSION
  spec.authors       = ["Ashley Margallo"]
  spec.email         = ["amarie921@yahoo.com"]

  spec.summary       = "Useless string helpers"
  spec.homepage      = "https://github.com/ashgallo/String_example"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
