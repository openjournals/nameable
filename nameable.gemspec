# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nameable/version'

Gem::Specification.new do |spec|
  spec.name          = 'openjournals-nameable'
  spec.version       = Nameable::VERSION
  spec.authors       = ['Chris Horn', 'Arfon Smith']
  spec.email         = ['arfon.smith@gmail.com']

  spec.summary       = 'Parse names into components.'
  spec.description   = 'A library that provides parsing and output of person names, as well as Gender & Ethnicity matching.'
  spec.homepage      = 'https://github.com/openjournals/nameable'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.5'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'simplecov'
end
