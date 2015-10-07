# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'beaker-hostgenerator/version'

Gem::Specification.new do |s|
  s.name        = "beaker-hostgenerator"
  s.version     = Beaker::Host::Generator::Version::STRING
  s.date        = "2015-10-07"
  s.authors     = ["Branan Purvine-Riley", "Wayne Warren"]
  s.email       = ["qe-team@puppetlabs.com"]
  s.homepage    = "https://github.com/puppetlabs/beaker-hostgenerator"
  s.summary     = "Beaker Host Generator Utility"
  s.description = <<-eos
The beaker-hostgenerator tool will take a Beaker SUT (System Under Test) spec as
its first positional argument and use that to generate a Beaker host
configuration file.
eos
  s.description = %q{For use for the Beaker acceptance testing tool}
  s.license     = 'Apache2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Testing dependencies
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rspec-its'
  s.add_development_dependency 'fakefs', '~> 0.6'
  s.add_development_dependency 'rake', '~> 10.1'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'pry', '~> 0.10'

  # Documentation dependencies
  s.add_development_dependency 'yard'
  s.add_development_dependency 'markdown'
  s.add_development_dependency 'thin'

  # Run time dependencies
  s.add_runtime_dependency 'deep_merge', '~> 1.0'
  s.add_runtime_dependency 'stringify-hash', '~> 0.0.0'

end
