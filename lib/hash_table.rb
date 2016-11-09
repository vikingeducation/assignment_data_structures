require_relative 'linked_list'

class HashTable

  def initialize
    @buckets = Array.new
  end

  def hash(key)
    key[0].ord - 97
  end

  def load_dictionary(filepath = "5desk.txt")
    File.readlines(filepath).each do |word|
      word = word.strip
      insert(word, "#{word} #{word}s")
    end
  end

  def insert(word, definition)
    bucket_index = hash(word.downcase)
    unless @buckets[bucket_index]
      list = LinkedList.new
      list.add_node(word, definition)
      @buckets[bucket_index] = list
    else
      @buckets[bucket_index].add_node(word, definition)
    end
  end

  def render_list
    ("A".."Z").each_with_index do |letter, index|
      bucket_length = @buckets[index] ? @buckets[index].length : 0
      puts "#{ letter }: #{ bucket_length }"
    end
  end

  def define(word)
    word = word.downcase
    bucket_content = @buckets[hash(word)]
    if bucket_content.nil?
      puts "Ain't got nothin' buddy-o. Be cool & try again."
    else
      bucket_content.each.with_index do |node, index|
        if node.word.downcase == word
          puts node.definition
          puts "Steps taken: #{index + 1}"
          return word
        end
      end
      puts "Ain't got nothin' buddy-o. Be cool & try again."
    end
  end

end

table = HashTable.new

table.load_dictionary
table.define("A")
