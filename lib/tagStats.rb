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
    @tags = @tags.sort_by{|_key, stats| stats['total']}.reverse!
    printTitle('      Tag Stats - Most Used      ')
    printMostUsedUntilChange(10)
    printSeparator
  end

  def printLessUsed
    @tags = @tags.sort_by{|_key, stats| stats['total']}
    printTitle('      Tag Stats - Less Used      ')
    printLessUsedUntilChange(3)
    printSeparator
  end

  def printMostUnread
    @tags = @tags.sort_by{|_key, stats| stats['unread']}.reverse!
    printTitle('     Tag Stats - Most Unread     ')
    printMostUnreadUntilChange(10)
    printSeparator
  end

  def printLessUnread
    @tags = @tags.sort_by{|_key, stats| stats['unread']}
    printTitle('     Tag Stats - Less Unread     ')
    printLessUnreadUntilChange(3)
    printSeparator
  end


  def printSpecificTerms(terms)
    
    specificTags = Hash.new
    terms.each do |term|
      if (@tags.has_key?(term))
        specificTags[term] = @tags[term]
      end
    end

    if (!specificTags.empty?)
      aux = @tags
      @tags = specificTags
      puts ''
      printMostUnread
      puts ''
      @tags = aux
    end

  end


  def printMostUsedUntilChange(changes)
    printTableHeaderTotalUnread
    printMostTableBody('total', 'unread',changes)
  end

  def printLessUsedUntilChange(changes)
    printTableHeaderTotalUnread
    printLessTableBody('total', 'unread', changes)
  end

  def printMostUnreadUntilChange(changes)
    printTableHeaderUnreadTotal
    printMostTableBody('unread', 'total', changes)
  end

  def printLessUnreadUntilChange(changes)
    printTableHeaderUnreadTotal
    printLessTableBody('unread', 'total', changes)
  end

  def printTableHeaderTotalUnread
    printTableHeader('total', 'unread')
  end

  def printTableHeaderUnreadTotal
    printTableHeader('unread', 'total')
  end  


  def printTableHeader(firstColumn, secondColumn)
    puts sprintf "%-13s | %6s  | %7s", 'tag', firstColumn, secondColumn
    puts '---------------------------------'
  end

  def printTitle(title)
    puts '================================='
    puts title
    puts '---------------------------------'
  end

  def printSeparator
    puts '================================='
  end


  def printRow(tag, firstColumnValue, secondColumnValue)
    puts sprintf "%-13s | %6d  | %7d", tag, firstColumnValue, secondColumnValue
  end


  def printMostTableBody(firstColumn, secondColumn, changes)

    changeCount = 0
    firstLoop = true
    prevValue = 0

    @tags.each do |tag, stats|
      
      if (firstLoop)
        prevCount = stats[firstColumn]
        firstLoop = false
      end

      firstColumnValue = stats[firstColumn]
      if (firstColumnValue < prevValue)
        changeCount += 1
        if (changeCount == changes)
          break
        end
      end
      prevValue = firstColumnValue

      secondColumnValue = stats[secondColumn]
      printRow(tag, firstColumnValue, secondColumnValue)

    end

  end


  def printLessTableBody(firstColumn, secondColumn, changes)

    changeCount = 0
    prevCount = 0

    @tags.each do |tag, stats|
      
      firstColumnValue = stats[firstColumn]
      if (firstColumnValue > prevCount)
        changeCount += 1
        if (changeCount == changes)
          break
        end
      end
      prevCount = stats[firstColumn]

      secondColumnValue = stats[secondColumn]
      printRow(tag, firstColumnValue, secondColumnValue)

    end

  end


end