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

  def load_dict(name = "5desk.txt")
    dict_arr = File.readlines(name)
    dict_arr.map! {|word| word.chomp}
    dict_arr.each do |word|
      insert([word.downcase.strip, "definition"])
    end
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
        puts counter
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

h.load_dict
h.define("apple")
# h.render_list
