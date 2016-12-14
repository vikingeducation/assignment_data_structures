class HashTable

  def initialize
    @buckets = Array.new(26)
  end

  def hash(word)
    letter = word[0].downcase
    letter.ord - 97
  end

  def insert(word)
    index = hash(word)
    if @buckets[index].nil?
      @buckets[index] = LinkedList.new(word)
    else
      @buckets[index].add_node(word)
    end
  end

  def render_list
    @buckets.each do |bucket|
      index = @bucket.index(bucket)]
      puts "Bucket for letter #{("A".."Z").to_a[index]}"
      puts @buckets[index]
    end
  end

  def define(word)
    index = hash(word)
    


end