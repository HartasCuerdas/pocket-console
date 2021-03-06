class PocketConsole
  
  def initialize(taggedItems, untaggedItems, readTaggedItems, readUntaggedItems)
    @taggedItems = taggedItems
    @untaggedItems = untaggedItems
    @readTaggedItems = readTaggedItems
    @readUntaggedItems = readUntaggedItems    
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
    itemStats = ItemStats.new(
      @taggedItems, @untaggedItems,
      @readTaggedItems, @readUntaggedItems
    )
    itemStats.print
  end

  def printTagStats
    tagStats = TagStats.new(@tagCollection)
    tagStats.print
  end

  def printSpecificTermsStats(terms)
      tagStats = TagStats.new(@tagCollection)
      tagStats.printSpecificTerms(terms)
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