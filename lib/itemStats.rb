require 'item'

class ItemStats

  def initialize(taggedItems, untaggedItems, readTaggedItems, readUntaggedItems)
    @taggedItems = taggedItems
    @untaggedItems = untaggedItems
    @readTaggedItems = readTaggedItems
    @readUntaggedItems = readUntaggedItems
  end

  def print
    printGeneralStats
  end

  def printGeneralStats
    tagged = @taggedItems.length
    untagged = @untaggedItems.length
    pctReadTagged = (@readTaggedItems.to_f/tagged)*100
    pctReadUntagged = (@readUntaggedItems.to_f/untagged)*100
    puts '=============================='
    puts '        General Stats         '
    puts '------------------------------'
    puts sprintf "%-15s %2d (%2d%% read)", 'Tagged items:', tagged, pctReadTagged
    puts sprintf "%-15s %2d (%2d%% read)", 'Untagged items:', untagged, pctReadUntagged
    puts '------------------------------'
  end

end