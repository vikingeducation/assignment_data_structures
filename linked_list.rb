Node = Struct.new(:word,:definition,:next_node)

class LinkedList
  attr_reader :first, :last

  def initialize
    @first=nil
    @last=nil
  end

  def add_node(word,definition)
    if @first.nil?
      @first=Node.new(word,definition,nil)
      @last=@first
    else
      new_node=Node.new(word,definition,nil)
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
      puts "Node at #{index} is #{current_node.word}: #{current_node.definition}"
      current_node

  end

  #The method below uses O(n) to insert a new node
  def insert_node(index, word, definition)
    node_before_index = find_node(index - 1)
    node_at_current_index = find_node(index)
    new_node = Node.new(word, definition,node_at_current_index)
    node_before_index.next_node = new_node
  end

  def reverse
    #reassign first node to point to nil
    prior_node=nil
    current_node = @first
    next_node = @first.next_node
    current_node.next_node=nil

    #this loop does not work
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
=begin
my_list=LinkedList.new
my_list.add_node("cat","animal that meows")
my_list.add_node("sun", "orange sphere")
my_list.add_node("dog","animal that barks")

current_node="cat"
next_node="sun"
current_node.next_node=nil ("cat"=>nil)

prior_node=current_node ("cat")
current_node=next_node ("sun")
next_node=current_node.next_node ("dog") #end loop when this is nil
current_node.next_node=prior_node ("sun"=>"cat")

prior_node=



my_list.add_node("flower", "plant-type that smells")
my_list.add_node("container","object that holds things")
my_list.add_node("chair", "object to sit in")

#p my_list.first
#p my_list.first.next_node
#p my_list.last
#my_list.find_node(3)
my_list.insert_node(1, "banana", "I am a fruit rich in potassium")

my_list.find_node(1)
=======


=end