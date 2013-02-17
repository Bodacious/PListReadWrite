# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plist_read_write/version'

Gem::Specification.new do |gem|
  gem.name          = "plist_read_write"
  gem.version       = PListReadWrite::VERSION
  gem.authors       = ["Bodacious"]
  gem.email         = ["gavin@katanacode.com"]
  gem.description   = %q{A Rubymotion gem to make light work of writing to and reading from plist files.}
  gem.summary       = %q{A Rubymotion gem to make light work of writing to and reading from plist files}
  gem.homepage      = "https://github.com/KatanaCode/PListReadWrite"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
