Gem::Specification.new do |s|
  s.name        = 'pocket-console'
  s.version     = '0.1.1'
  s.date        = '2014-10-28'
  s.summary     = 'Stats from Pocket on your console'
  s.add_runtime_dependency 'pocket-classes', '~> 0.0.1'
  s.description = 'Stats about Pocket tags, on your console.'
  s.authors     = ['Franco Cedillo']
  s.email       = 'franco.cedillo@gmail.com'
  s.files       = [
                    'lib/pocketConsole.rb',
                    'lib/itemStats.rb',
                    'lib/tagStats.rb',
                    'lib/itemsPrinter.rb',
                    'CHANGELOG.md'
                  ]
  s.homepage    = 'http://rubygems.org/gems/pocket-console'
  s.license     = 'MIT'
  s.post_install_message = 'Pocket Stats in your console'
end