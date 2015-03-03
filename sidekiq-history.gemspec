# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/history/version'

Gem::Specification.new do |gem|
  gem.name          = 'sidekiq-history'
  gem.version       = Sidekiq::History::VERSION
  gem.authors       = ['Anton Davydov']
  gem.email         = ['antondavydov.o@gmail.com']

  if gem.respond_to?(:metadata)
    gem.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  gem.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  gem.description   = %q{TODO: Write a longer description or delete this line.}
  gem.homepage      = "TODO: Put your gem's website or public repo URL here."
  gem.license       = 'MIT'

  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  gem.bindir        = 'exe'
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency 'sidekiq',  '>= 3.0.0'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'sinatra'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'minitest', '~> 5.0.7'

  gem.add_development_dependency 'bundler', '~> 1.8'
  gem.add_development_dependency 'rake', '~> 10.0'
end
