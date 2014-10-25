Gem::Specification.new do |s|
  s.name        = 'pocket-console'
  s.version     = '0.0.0'
  s.date        = '2014-10-25'
  s.summary     = 'Stats from Pocket on your console'
  s.description = <<-EOF
This gem provides methods to output stats about Pocket tags.

1. General Stats
2. Most Used tags
3. Most Unread. Tags that were assigned to the most large amount of items.

Stats are presented in tables, formatted as you can see below:

====================
   General Stats
--------------------
Tagged items:   50
Untagged items: 30
--------------------

================================
     Tag Stats - Most Used
--------------------------------
tag          |  total  |  unread
pocket       |     16  |       3
dev          |      7  |       5
ux           |      4  |       1
techonomics  |      4  |       0
rails        |      2  |       2
things       |      2  |       2
history      |      2  |       1
ifttt        |      2  |       1
ios          |      2  |       2
node.js      |      2  |       2
================================

================================
     Tag Stats - Most Unread
--------------------------------
tag          |  unread  |  total
dev          |       5  |      7
pocket       |       3  |     16
rails        |       2  |      2
things       |       2  |      2
ios          |       2  |      2
node.js      |       2  |      2
================================

EOF
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