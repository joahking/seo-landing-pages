# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'seo_landing_pages/version'

Gem::Specification.new do |spec|
  spec.name          = 'seo_landing_pages'
  spec.version       = SeoLandingPages::VERSION
  spec.authors       = ['Joaquin Rivera Padron']
  spec.email         = ['joahking@gmail.com']
  spec.summary       = %q{Manage SEO key elements of landing pages in Rails easily.}
  spec.description   = %q{Create landing pages matching your pages, and manage their title, description and keywords in Rails easily.}
  spec.homepage      = 'https://github.com/joahking/seo-landing-pages'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10'

  spec.add_dependency 'railties', '>= 3.2.6', '< 5'
end

