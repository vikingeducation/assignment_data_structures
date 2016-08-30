class Stack

  def initialize
    @stack_arr = []
  end

  def push(object)
    @stack_arr[@stack_arr.length] = object
    @stack_arr
  end

  def pop
    if @stack_arr.length == 1
      @stack_arr = nil
    else
     @stack_arr = @stack_arr[0..@stack_arr.length - 2] unless empty?
    end
    @stack_arr
  end

  def empty?
    @stack_arr == nil
  end

end
