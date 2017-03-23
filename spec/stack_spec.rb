require "stack"

describe Stack do 

  let(:stack){ Stack.new }

  describe "#initialize" do 
    it "should set an instance variable @array to an empty array" do 
      expect(stack.array).to eq([])
    end
  end

  describe "#empty?" do 
    it "should return true if the array is empty" do 
      expect(stack.empty?).to be true
    end

    it "should return false if the array contains a value" do 
      stack.array << 3
      expect(stack.empty?).to be false
    end
  end

  describe "#push" do 
    before do 
      stack.push(3)
    end

    it "should set a value in the array if empty" do 
      expect(stack.array[-1]).to eq(3)
    end

    it "should place one item in the array at a time" do 
      expect(stack.array.length).to eq(1)
    end

    it "set the value as the last item in the array if not empty" do
      stack.push(4)
      expect(stack.array[-1]).to eq(4)
    end 
  end

  describe "#peek" do 
    it "returns nil if array is empty" do 
      expect(stack.peek).to eq(nil)
    end

    it "returns the last item in the array" do 
      stack.push(3)
      stack.push(4)
      expect(stack.peek).to eq(4)
    end
  end

  describe "#pop" do 
    it "raises an error if array is empty" do 
      expect{ stack.pop }.to raise_error("stack is empty!")
    end 

    it "removes the last item in the array" do 
      stack.push(3)
      stack.push(4)
      stack.pop
      expect(stack.array).to eq([3])
    end

    it "returns the last item in the array" do 
      stack.push(2)
      expect(stack.pop).to eq(2)
    end
  end
  
end







