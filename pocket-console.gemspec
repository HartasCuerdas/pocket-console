Gem::Specification.new do |s|
  s.name        = 'pocket-console'
  s.version     = '0.0.1'
  s.date        = '2014-10-25'
  s.summary     = 'Stats from Pocket on your console'
  s.add_runtime_dependency 'pocket-classes', '~> 0.0.1'
  s.description = 'This gem provides methods to output stats about Pocket tags.'
  s.authors     = ['Franco Cedillo']
  s.email       = 'franco.cedillo@gmail.com'
  s.files       = [
                    'lib/pocketConsole.rb',
                    'lib/itemStats.rb',
                    'lib/tagStats.rb',
                    'lib/itemsPrinter.rb'
                  ]
  s.homepage    = 'http://rubygems.org/gems/pocket-console'
  s.license     = 'MIT'
end