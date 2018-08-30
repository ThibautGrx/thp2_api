lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thp2_api_tg/version'

Gem::Specification.new do |spec|
  spec.name          = 'thp2_api_tg'
  spec.version       = Thp2ApiTg::VERSION
  spec.authors       = ['Thibaut Gorioux']
  spec.email         = ['gorioux.thibaut@gmail.com']
  spec.summary       = 'Gem for Thp2.0 api'
  spec.description   = 'Use this api to manage a learning platform'
  spec.homepage      = 'https://github.com/ThibautGrx/thp2_api_tg'
  spec.license       = 'MIT'
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency "rubocop", "= 0.52.1"
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'

  spec.add_dependency 'faraday'
end
