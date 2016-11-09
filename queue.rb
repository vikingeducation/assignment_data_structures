class Queue
 	
 	attr_accessor :arr

 	def initialize(arr = nil)
 		@arr = arr || []

 	end

	def enqueue(value)
 		arr[arr.length] = value
    arr
	end

	def dequeue
		return_dequeue = arr[0]
    return_array = []
    counter = 1
    while counter < (arr.length)
      # loop through old array and put all values into new array, front to back
      return_array[counter-1] = arr[counter]
      counter += 1
    end
    @arr = return_array
    # puts arr
    return_dequeue
	end

	def peek
		arr[0]
	end
end

def load(string)
	s = Queue.new
	counter = 0
	while counter < string.length
		s.enqueue(string[counter])
		counter += 1		
	end
	arr

end

p load("hello")
# q = Queue.new([1,2,4])
# d = Queue.new([2,3,5])

# p q.enqueue(10)
# p d.arr
# p d.dequeue
# p d.arr
