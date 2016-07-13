Node = Struct.new(:word,:next_node)

class HashTable

def initialize
  @buckets=[]
end

def hash(word)
#takes a word and returns an array index based on its first letter
  word[0].downcase.ord-97
end

def insert(word)
  index=hash(word)
  if @buckets[index]
    @buckets[index].add_node(word)
  else
    @buckets[index]=LinkedList.new
    @buckets[index].add_node(word)
  end
end

end

class LinkedList
  attr_reader :first, :last

  def initialize
    @first=nil
    @last=nil
  end

  def add_node(word)
    if @first.nil?
      @first=Node.new(word, nil)
      @last=@first
    else
      new_node=Node.new(word,nil)
      @last.next_node=new_node
      @last=new_node
    end
  end

  def find_last_node
    pointer=@first.next_node
    until pointer.nil?
      pointer=pointer.next_node
    end
    pointer
  end

  #The method below uses O(n) to find the specific indexed node
  def find_node(index)
      counter = 0
      current_node = @first
      while counter < index 
        current_node = current_node.next_node
        counter += 1
      end

      puts "Searched #{counter+1} nodes."
      current_node

  end

  #The method below uses O(n) to insert a new node
  def insert_node(index, word)
    node_before_index = find_node(index - 1)
    node_at_current_index = find_node(index)
    new_node = Node.new(word,node_at_current_index)
    node_before_index.next_node = new_node
  end

  #The method below uses O(n) to reverse a new node
  def reverse
    #reassign first node to point to nil
    prior_node=nil
    current_node = @first
    next_node = @first.next_node
    current_node.next_node=nil

    while next_node
      prior_node = current_node
      current_node = next_node
      next_node = current_node.next_node
      current_node.next_node = prior_node
    end
    last=@last
    @last=@first
    @first=last
  end

end