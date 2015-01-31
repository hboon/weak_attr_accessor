# -*- encoding: utf-8 -*-
require File.expand_path('../lib/weak_attr_accessor/version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'weak_attr_accessor'
  gem.version       = WeakAttrAccessor::VERSION
  gem.licenses      = ['BSD']

  gem.authors  = ['Hwee-Boon Yar']

  gem.description = 'Adds weak_attr_accessor that wraps objects with WeakRef'
  gem.summary = 'Adds weak_attr_accessor that wraps objects with WeakRef'
  gem.homepage = 'https://github.com/hboon/weak_attr_accessor'
  gem.email = 'hboon@motionobj.com'

  gem.files       = `git ls-files`.split($\)
  gem.require_paths = ['lib']
  #gem.test_files  = gem.files.grep(%r{^spec/})
end
