require_relative 'linked_list'

class HashTable
  # Note that instructions seem weird - did not write any of these methods inside linked list.  Maybe meant will depend on those methods?

  def initialize
    @buckets = Array.new(26)
  end

  def hash(word)
    word[0].ord - 97
  end

  def insert(word, definition = nil)
    bucket = @buckets[hash(word)]

    if bucket.nil?
      new_list = LinkedList.new
      new_list.add_node_to_end(word, definition)
      @buckets[hash(word)] = new_list
    else
      bucket.add_node_to_end(word, definition)
    end
  end

  def render
    @buckets.each_with_index do |bucket, index|
      next if bucket.nil?
      size = bucket.length

      puts "Letter '#{(index + 97).chr}': #{size} item(s)"

      # Uncomment to show words
      # result = []
      # size.times { |i| result << bucket.find_node(i).word }
      # puts result.join(', ')
    end
  end

  def define(word)
    bucket = @buckets[hash(word)]

    if bucket.nil?
      puts "No words with that letter yet!"
    else
      bucket.get_definition(word)
    end
  end
end

x = HashTable.new
# x.insert('alpha', 'Greek letter for a')
# x.insert('gamma', 'Greek letter for g')
# x.insert('zeta', 'Greek letter for z')
# x.insert('anthropology', 'The study of people')
# x.render
# x.define('zeta')
# x.define('a')

File.readlines('5desk.txt').each do |line|
  word = line.downcase.strip
  x.insert(word, "is a #{word}")
end

x.render
x.define('anthropology')
x.define('xerkjhsgkh')
