require "stack"

describe Stack do
  let(:stack){ Stack.new }
  let(:populated_stack){ Stack.new([1,2,3]) }

  describe "#initialize" do
    it "has an empty container by default" do
      expect(stack.container).to eq([])
    end

    it "initializes with the given container" do
      expect(populated_stack.container).to eq([1,2,3])
    end
  end

  describe "#push" do
    it "appends a new item to the end of the stack" do
      stack.push(1)
      expect(stack.container[0]).to eq(1)
      stack.push(2)
      expect(stack.container[1]).to eq(2)
    end

    it "returns the stack with the new item" do
      expect(stack.push(1).is_a? Stack).to be(true)
    end
  end

  describe "#pop" do

    it "removes the last item of the stack" do
      populated_stack.pop
      expect(populated_stack.container).to eq([1, 2])
    end

    it "returns the last item of the stack" do
      expect(populated_stack.pop).to eq(3)
    end

    it "works with just one item" do
      s = Stack.new([1])
      s.pop
      expect(s.empty?).to be(true)
    end
  end

  describe "#peek" do
    it "returns the value of the last item of the stack" do
      last = populated_stack.container.last
      expect(populated_stack.peek).to eq(last)
    end

    it "returns the value at the given index, if provided" do
      first = populated_stack.container[0]
      expect(populated_stack.peek(0)).to eq(first)
    end

    it "doesn't alter the content of the stack" do
      before = populated_stack.container
      populated_stack.peek
      expect(populated_stack.container).to eq(before)
    end
  end

  describe "#empty?" do
    it "returns true if the container is empty" do
      s = Stack.new
      expect(s.empty?).to be(true)
    end

    it "returns false if the container is not empty" do
      expect(populated_stack.empty?).to be(false)
    end
  end

end
