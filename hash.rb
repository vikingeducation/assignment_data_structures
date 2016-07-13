require_relative 'linked_list'

class Hash
  attr_accessor :buckets

  def initialize
    @buckets = Array.new(26)
  end

  def hash(string)
    string[0].downcase.ord-97
  end

  def insert(string)
    index = hash(string)
    @buckets[index] ||= LinkedList.new
    @buckets[index].add_node(string)
  end

  def render_list
    @buckets.length.times do |list|
      unless @buckets[list].nil?
        print "#{@buckets[list].head.data[0].upcase}: "
        @buckets[list].search(@buckets[list].length-1)
      end
    end

  end
end

h = Hash.new
h.insert("apple")
h.insert("actuary")
h.insert("ace")
h.insert("banana")
h.insert("derek")
h.insert("zebra")
h.insert("zoo")
h.render_list
