require_relative 'linked_list'

class HashTable
  attr_reader :buckets
  def initialization
    
    @buckets = Array.new(26, LinkedList.new)
    puts @buckets

  end

  def hash(word)
    (word[0].upcase.ord) - 65

  end

  def insert(word)
    @buckets[hash(word)].add_node(word)
  end

  def render_list
    @buckets.each do |bucket|
      puts bucket.contents.count
    end
  end
  
end

table = HashTable.new
# p table.hash('badd')
puts table.buckets
# table.insert('add')
# table.insert('subtract')
# table.render_list