# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vcard/version'

Gem::Specification.new do |gem|
  gem.name          = "vcard"
  gem.version       = Vcard::VERSION
  gem.authors       = ["Kuba Kuźma"]
  gem.email         = ["kuba@jah.pl"]
  gem.description   = %q{Vcard extracted from Vpim}
  gem.summary       = %q{Vcard extracted from Vpim}
  gem.homepage      = "http://github.com/qoobaa/vcard"
  gem.licenses      = "GPL"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency 'htmlentities', '~> 4.3'
end
