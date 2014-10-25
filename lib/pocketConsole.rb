class PocketConsole
  
  def initialize(taggedItems, untaggedItems)
    @taggedItems = taggedItems
    @untaggedItems = untaggedItems
    @tagCollection = TagCollection.new(taggedItems)
  end

  def printStats
    puts ''
    printGeneralStats
    puts ''
    printTagStats
    puts ''
  end

  def printGeneralStats
    itemStats = ItemStats.new(@taggedItems, @untaggedItems)
    itemStats.print
  end

  def printTagStats
    tagStats = TagStats.new(@tagCollection)
    tagStats.print
  end

  def printItems
    items = @taggedItems + @untaggedItems
    itemsPrinter = ItemsPrinter.new(items)
  end

end

require 'tagCollection'

require 'itemStats.rb'
require 'tagStats.rb'
require 'itemsPrinter.rb'