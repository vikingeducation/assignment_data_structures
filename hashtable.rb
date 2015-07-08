require_relative 'linked_list.rb'

class HashTable

  def initialize
    @backets=(0..25).to_a
    @arr=('a'..'z').to_a
  end

  def hash(word)
    @arr.index(word[0][0])
  end

  def insert(word)
     
    @backets[hash(word)]=LinkedList.new unless @backets[hash(word)].class == LinkedList
    @backets[hash(word)].add_node(word)

  end

  def print(index)
    @backets[index].print_list
  end

  def render_list 
    @backets.each_with_index do |list,index| 
      puts "An index #{@arr[index]}"
      list.class == Fixnum ? list : list.print_list 
    end
  end

  def define(word)
    current_node=@backets[hash(word)].head
    counter=1
    until current_node.data[0] == word
      counter+=1
      if current_node.next == nil
        puts "No such word"
        exit
      else
      current_node = current_node.next  
      end
    end
    puts "Counted #{counter} nodes"
    puts "Definition is #{current_node.data[1]}"

  end
end

h=HashTable.new

h.insert(["sun","star"])
h.insert(["sin","abstract"])
h.insert(["salt","mineral"])

h.insert(["earth","planet"])
#h.render_list

h.define("salt")
