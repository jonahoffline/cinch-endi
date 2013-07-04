# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'cinch-endi'
  spec.version       = File.new('VERSION', 'r').read.chomp
  spec.authors       = ['Jonah Ruiz']
  spec.email         = ['jonah@pixelhipsters.com']
  spec.description   = %q{Endi is a Cinch plugin for getting the latest news from endi.com}
  spec.summary       = %q{Endi is a Cinch plugin for getting the latest news from endi.com / El Nuevo Dia Newspaper}
  spec.homepage      = 'https://github.com/jonahoffline/cinch-endi'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency 'cinch', '~> 2.0.5'
  spec.add_dependency 'endi_feed', '~> 0.0.1'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
