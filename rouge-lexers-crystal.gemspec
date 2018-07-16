
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rouge-lexers-crystal"
  spec.version       = "1.0.0.rc1"
  spec.authors       = ["Peter Leitzen"]
  spec.email         = ["peter@leitzen.de"]

  spec.summary       = %q{Crystal lexer for rouge}
  spec.description   = %q{https://github.com/jneen/rouge/pull/441}
  spec.homepage      = "https://github.com/splattae/rouge-lexers-crystal"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "minitest-power_assert"

  spec.add_runtime_dependency "rouge"
end
