require_relative 'lib/converter/version'

Gem::Specification.new do |spec|
  spec.name          = 'converter'
  spec.version       = Converter::VERSION
  spec.authors       = ['Maksym Suhak']
  spec.email         = ['maxsuhak@gmail.com']

  spec.summary       = 'Convert string representation of object to hash'
  spec.homepage      = 'https://rubygems.org/gems/converter_ms'
  spec.license       = 'MIT'

  spec.required_ruby_version = '~> 2.7'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/maxsuhak/converter'

  spec.files = Dir['lib/   *.rb'] + Dir['bin/*']
  spec.files += Dir['[A-Z]*'] + Dir['spec/**/*']

  spec.add_development_dependency 'pry', '0.13.1'
  spec.add_development_dependency 'rake', '13.0.3'
  spec.add_development_dependency 'rspec', '3.10.0'
  spec.add_development_dependency 'rubocop', '1.6.1'
  spec.add_development_dependency 'rubocop-rake', '0.5.1'
  spec.add_development_dependency 'rubocop-rspec', '2.1.0'
end
