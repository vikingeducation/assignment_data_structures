Node = Struct.new(:word, :explaination, :pointer)
class Linkedlist
   attr_accessor :list
   
   def initialize
       @list = nil
   end
   
   def connect(newnode)
       if @list == nil
          @list = newnode
       else
          connect2(@list, newnode)
       end
   end
   
   def connect2(node, nodenew)
       connect2(node.pointer, nodenew) if node.pointer !=nil
       node.pointer = nodenew if node.pointer == nil
       return node
   end
   
   def rev(node)# I still creat a new array every time I try to disconnect an element from a long linkedlist chain
      son = node.pointer
      node.pointer = nil
      return node if son == nil
      connect2(rev(son), node) if son != nil
   end
   
   def reverse
      @list = rev(@list)
   end 
end


class HashTable
    attr_accessor :buckets
    
    def initialize
        @buckets = []
        readdict("5desk.txt")
    end
    
    def hash(words)
        first_word = transfer(words[0].downcase)
        array = []
        node = @buckets[first_word].list
        while node != nil do
            array << node.word
            node = node.pointer
        end
        print array 
        puts ""
    end
    
    def transfer(word)
        return word.ord - 97
    end
    
    def insert(words)
        wordnode = Node.new("#{words}", "it means #{words}", nil)
        first_word = transfer(words[0].downcase)
        @buckets[first_word] = Linkedlist.new if @buckets[first_word] == nil
        @buckets[first_word].connect(wordnode)
        @buckets[first_word + 26] = 0 if @buckets[first_word + 26] == nil
        @buckets[first_word + 26] += 1
    end
    
    def render_list
       (0).upto(25) do |i|
           cha = (i + 97).chr
           print cha + ":  " + @buckets[i + 26].to_s + "\n" if @buckets[i] != nil 
       end
    end
    
    def printdict(word, explanation)
       print "#{word}" + "  :   " +  "#{explanation}" + "\n"
    end
    
    def define(word)
        first_word = transfer(word[0].downcase)
        find = 0
        search = @buckets[first_word].list
        step = 0
        while find == 0 && search != nil do
           find = 1 && printdict(search.word, search.explaination) if search.word == word
           search = search.pointer
           step += 1
        end
        print "not find" if find == 0
        print "find" if find == 1
        print "\n" + "you take #{step} step" + "\n"
    end
    
    def readdict(file)
        word = ""
        File.readlines(file).each do |line|
            word = line.strip
            insert(word)
        end
    end
    
end

h1 = HashTable.new #the steps depends on the number of words install in the dict
#and in some cases it only takes 30+steps because there's only 30+ words starts with x 
#but for a or b sometimes it takes over 3000 steps
#h1.render_list
#puts h1.hash("xxx")
h1.define("avast")
=begin
h1 = HashTable.new
h1.insert("aa")
h1.insert("ac")
h1.insert("cb")
h1.insert("ef")
h1.insert("ea")
puts h1.render_list

h1.define("eg")

h1.define("ac")


l1 = Linkedlist.new
n1 = Node.new("first", "is first", nil)
n2 = Node.new("second", "is second", nil)
l1.connect2(n1, n2)
l1.connect(n1)
n3 = Node.new("third", "is third", nil)
l1.connect(n3)
puts l1.list
l1.reverse
puts l1.list
=end