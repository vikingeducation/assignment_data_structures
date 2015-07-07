class Stack
  attr_reader :arr
  def initialize
    @arr=[]
  end


  def push(el)
    @arr[@arr.length]=el

  end

  def pop
    @arr=@arr[0..@arr.length-2]
  end

  def peak
    @arr[@arr.length-1]
  end

  def empty?
    @arr[0] == nil
  end

  def size
    i=0
    until @arr[i]==nil
      i+=1
    end
    i
  end 

  def reverse
    arr_rev=[]
    (@arr.size).times do
      arr_rev.push(@arr.pop) 
    end
    arr_rev
  end

end

s=Stack.new
s.push("abc")
s.push("cde")
p s.arr
p s.reverse
