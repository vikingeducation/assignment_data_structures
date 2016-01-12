Class Stack
  
  # push element to end of array
  def push(element)

    self[self.length] = element

  end

  # pop element ouf of array
  def pop
    self[0..self.length-2]
  end


end
