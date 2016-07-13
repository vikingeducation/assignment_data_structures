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

  def find_node(index)
  end

  def find_last_node
    pointer=@first.next_node
    until pointer.nil?
      pointer=pointer.next_node
    end
    pointer
  end

end

my_list=LinkedList.new
my_list.add_node("cat","animal that meows")
my_list.add_node("sun", "orange sphere")
p my_list.first
p my_list.first.next_node
p my_list.last
