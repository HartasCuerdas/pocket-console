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
    puts ''
    printLessUnread
  end

  def printMostUsed
    @tags = @tags.sort_by{|_key, stats| stats['count']}.reverse!
    puts '================================='
    puts '      Tag Stats - Most Used      '
    puts '---------------------------------'
    printMostUsedUntilChange(10)
    puts '================================='
  end

  def printLessUsed
    @tags = @tags.sort_by{|_key, stats| stats['count']}
    puts '================================='
    puts '      Tag Stats - Less Used      '
    puts '---------------------------------'
    printLessUsedUntilChange(3)
    puts '================================='
  end

  def printMostUnread
    @tags = @tags.sort_by{|_key, stats| stats['unread']}.reverse!
    puts '================================='
    puts '     Tag Stats - Most Unread     '
    puts '---------------------------------'
    printMostUnreadUntilChange(10)
    puts '================================='
  end

  def printLessUnread
    @tags = @tags.sort_by{|_key, stats| stats['unread']}
    puts '================================='
    puts '     Tag Stats - Less Unread     '
    puts '---------------------------------'
    printLessUnreadUntilChange(3)
    puts '================================='
  end


  def printMostUsedUntilChange(changes)

    puts sprintf "%-13s | %6s  | %7s", 'tag', 'total', 'unread'
    puts '---------------------------------'

    changeCount = 0
    firstLoop = true
    prevCount = 0

    @tags.each do |tag, stats|

      if (firstLoop)
        prevCount = stats['count']
        firstLoop = false
      end

      count = stats['count']
      if (count < prevCount)
        changeCount += 1
        if (changeCount == changes)
          break
        end
      end
      prevCount = stats['count']

      unread = stats['unread']
      puts sprintf "%-13s | %6d  | %7d", tag, count, unread

    end

  end


  def printLessUsedUntilChange(changes)

    puts sprintf "%-13s | %6s  | %7s", 'tag', 'total', 'unread'
    puts '---------------------------------'

    changeCount = 0
    prevCount = 0

    @tags.each do |tag, stats|
      
      count = stats['count']
      if (count > prevCount)
        changeCount += 1
        if (changeCount == changes)
          break
        end
      end
      prevCount = stats['count']

      unread = stats['unread']
      puts sprintf "%-13s | %6d  | %7d", tag, count, unread

    end

  end


  def printMostUnreadUntilChange(changes)

    puts sprintf "%-13s | %6s  | %7s", 'tag', 'unread', 'total'
    puts '---------------------------------'

    changeCount = 0
    firstLoop = true
    prevCount = 0

    @tags.each do |tag, stats|
      
      if (firstLoop)
        prevCount = stats['unread']
        firstLoop = false
      end

      unread = stats['unread']
      if (unread < prevCount)
        changeCount += 1
        if (changeCount == changes)
          break
        end
      end
      prevCount = stats['unread']

      count = stats['count']
      puts sprintf "%-13s | %6d  | %7d", tag, unread, count

    end

  end


  def printLessUnreadUntilChange(changes)

    puts sprintf "%-13s | %6s  | %7s", 'tag', 'unread', 'total'
    puts '---------------------------------'

    changeCount = 0
    prevCount = 0

    @tags.each do |tag, stats|

      unread = stats['unread']
      if (unread > prevCount)
        changeCount += 1
        if (changeCount == changes)
          break
        end
      end
      prevCount = stats['unread']

      count = stats['count']
      puts sprintf "%-13s | %6d  | %7d", tag, unread, count

    end

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


end