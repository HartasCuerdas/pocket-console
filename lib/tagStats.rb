class TagStats

  def initialize(tagCollection)
    @tags = tagCollection.getTags
  end

  def print
    printMostUsed
    puts ''
    printLessUsed
    puts ''
    printMostUnread
  end

  def printMostUsed
    @tags = @tags.sort_by{|_key, stats| stats['count']}.reverse!
    puts '================================='
    puts '      Tag Stats - Most Used      '
    puts '---------------------------------'
    printTopTable
    puts '================================='
  end

  def printLessUsed
    @tags = @tags.sort_by{|_key, stats| stats['count']}
    puts '================================='
    puts '      Tag Stats - Less Used      '
    puts '---------------------------------'
    printUntilTable
    puts '================================='
  end

  def printTopTable
    
    puts sprintf "%-13s | %6s  | %7s", 'tag', 'total', 'unread'
    puts '---------------------------------'
    top_count = 0

    @tags.each do |tag, stats|
      
      count = stats['count']
      unread = stats['unread']
      puts sprintf "%-13s | %6d  | %7d", tag, count, unread

      top_count += 1

      if (top_count == 10)
        break
      end

    end

  end

  def printUntilTable
    
    puts sprintf "%-13s | %6s  | %7s", 'tag', 'total', 'unread'
    puts '---------------------------------'

    changeCount = 0
    prevCount = 0

    @tags.each do |tag, stats|
      
      count = stats['count']
      if (count > prevCount)
        changeCount += 1
        if (changeCount == 3)
          break
        end
      end
      prevCount = stats['count']

      unread = stats['unread']
      puts sprintf "%-13s | %6d  | %7d", tag, count, unread

    end

  end

  def printMostUnread
    @tags = @tags.sort_by{|_key, stats| stats['unread']}.reverse!
    puts '================================='
    puts '     Tag Stats - Most Unread     '
    puts '---------------------------------' 
    puts sprintf "%-13s | %7s  | %6s", 'tag', 'unread', 'total'
    puts '---------------------------------'
    @tags.each do |tag, stats|
      unread = stats['unread']
      if unread == 1
        break
      end
      count = stats['count']
      puts sprintf "%-13s | %7d  | %6d", tag, unread, count
    end
    puts '================================='
  end

end