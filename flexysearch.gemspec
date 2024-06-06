require_relative 'lib/flexysearch/version'

Gem::Specification.new do |spec|
  spec.name = 'flexysearch'
  spec.version     = Flexysearch::Version::STRING
  spec.date        = '2013-12-31'
  spec.summary     = ''
  spec.description = ''
  spec.authors     = ['Alexandro castro']
  spec.email       = 'alexoliveira7x@gmail.com'

  spec.required_ruby_version = '>= 2.7.0'
  spec.require_paths = ['lib']
  spec.files = Dir['{lib}/**/*'] + ['README.md', 'CHANGELOG.md', 'flexysearch.gemspec']

  spec.add_dependency 'activerecord', '>= 6.0.0', '<= 7.2.0'
  spec.add_development_dependency 'faker', '~> 3.3.1'
  spec.add_development_dependency 'pg', '~> 1.5.6'
  spec.add_development_dependency 'rake', '~> 13.1.0'
  spec.add_development_dependency 'rubocop', '~> 1.59'
  spec.add_development_dependency 'rubocop-shopify', '~> 2.14'
  spec.add_development_dependency 'simplecov', '0.17.1'

  if Gem::Version.new(RUBY_VERSION) < Gem::Version.new('3') # rubocop:disable Gemspec/RubyVersionGlobalsUsage
    spec.add_development_dependency 'minitest', '>= 5.15.0', '< 5.16'
  else
    spec.add_development_dependency 'minitest', '>= 5.15.0'
  end
end
