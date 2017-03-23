require "queue"

describe Queue do 

  let(:queue){ Queue.new }
  
  describe "#initialize" do 
    it "should set an instance variable @array to an empty array" do 
      expect(queue.array).to eq([])
    end
  end

  describe "#empty?" do 
    it "returns true if array does not contain any values" do 
      expect(queue.empty?).to be true
    end

    it "returns false if array contains values" do 
      queue.instance_variable_set(:@array, [2, 3])
      expect(queue.empty?).to be false
    end
  end

  describe "#enqueue" do 
    before do 
      queue.enqueue(1)
    end

    it "sets the value to the last item in the array if empty" do 
      expect(queue.array[0]).to eq(1)
    end

    it "sets the value to the last item in the array even if it contains a value already" do 
      queue.enqueue(2)
      expect(queue.array[-1]).to eq(2)
    end
  end

  describe "#dequeue" do 
    it "raises an error if the array is empty" do 
      expect{ queue.dequeue }.to raise_error
    end

    it "removes the first value in the array" do 
      queue.enqueue(2)
      queue.dequeue
      expect(queue.array.length).to eq(0)
    end
  end

  describe "#peek" do 
    it "returns nil if array is empty" do 
      expect(queue.peek).to eq(nil)
    end
  end

end








