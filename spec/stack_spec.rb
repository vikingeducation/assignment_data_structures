require 'rspec'
require 'stack'

describe Stack do
  let(:stack) { Stack.new }

  describe "#new" do
    it "should start with a empty stack" do
      expect(stack.peek).to be_nil
    end
  end

  describe "#empty?" do
    it "returns true when the stack is empty" do
      expect(stack.empty?).to be true
    end

    it "returns false when stack not empty" do
      stack.push("data")
      expect(stack.empty?).to be false
    end
  end

  describe "#push" do
    it "adds a new node to the head" do
      stack.push("data")
      old_head = stack.head
      stack.push("new data")
      expect(stack.peek).to eq("new data")
      expect(stack.head.pointer).to eq(old_head)
    end
  end

  describe "#pop" do
    it "removes the current head sets head to next item" do
      stack.push("lower plate")
      stack.push("higher plate")
      stack.pop
      expect(stack.peek).to eq("lower plate")
    end
  end
end