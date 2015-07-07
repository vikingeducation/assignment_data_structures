class Stack

  def initialize
    @el = []
  end

  def push(input)
    @el += [input]
  end

  def pop
    last_item = @el[@el.length-1]
    if @el.length > 1
      @el = @el[0..@el.length-2]
    else
      @el=[]
    end
    return last_item
  end

  def peek
    @el[@el.length-1]
  end

  def empty?
    @el.length == 0
  end

  def size
    count = 0
    until @el[count].nil?
      count +=1
    end
    count
  end

end

string = Stack.new
word = "good"
new_word= ""
word.split("").each {|letter| string.push(letter)}

until string.empty?
  new_word += string.pop
end
puts new_word