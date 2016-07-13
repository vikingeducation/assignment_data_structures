require_relative 'linked_list'

class HashTable
  attr_accessor :buckets

  def initialize
    @buckets = Array.new(26)
  end

  def hash(string)
    string.keys[0].to_s[0].downcase.ord-97
  end

  def insert(string)
    index = hash(string)
    @buckets[index] ||= LinkedList.new
    @buckets[index].add_node(string)
  end

  def render_list
    @buckets.length.times do |list|
      letters = ("A".."Z").to_a
      unless @buckets[list].nil?
        print "#{ letters[list] }: "
        @buckets[list].search(@buckets[list].length-1)
      end
    end

  end
end


h = HashTable.new
h.insert(apple: "fruit")
h.insert(actuary: "job")
h.insert(ace: "card")
h.insert(banana: "fruit")
h.insert(derek: "name")
h.insert(zebra: "animal")
h.insert(zoo: "place")
h.render_list
