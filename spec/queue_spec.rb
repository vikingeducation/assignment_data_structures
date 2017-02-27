require "queue"

describe Queue do
  let(:queue){ Queue.new }
  let(:populated_queue){ Queue.new([1,2,3]) }

  describe "#initialize" do
    it "defaults to an empty queue" do
      expect(queue.container).to eq([])
    end

    it "initializes with the given items" do
      expect(populated_queue.container).to eq([1,2,3])
    end
  end

  describe "#enqueue" do
    it "appends an item to the end of the queue" do
      queue.enqueue(1)
      expect(queue.container).to eq([1])
      queue.enqueue(2)
      expect(queue.container).to eq([1, 2])
    end

    it "returns a queue with the appended item" do
      expect(queue.enqueue(1).is_a? Queue).to be(true)
    end
  end

  describe "#dequeue" do
    it "returns the first item of the queue" do
      first = populated_queue.container[0]
      expect(populated_queue.dequeue).to eq(first)
    end

    it "removes the first item of the queue" do
      rest = populated_queue.container[1..-1]
      populated_queue.dequeue
      expect(populated_queue.container).to eq(rest)
    end
  end

  describe "#peed" do
    it "returns the next item to be dequeued" do
      next_ = populated_queue.container[0]
      expect(populated_queue.peek).to eq(next_)
    end

    it "does not alter the queue" do
      before = populated_queue.container
      populated_queue.peek
      expect(populated_queue.container).to eq(before)
    end
  end

  describe "#empty?" do
    it "returns true if the queue is empty" do
      expect(queue.empty?).to be(true)
    end

    it "returns false is the queue is not empty" do
      expect(populated_queue.empty?).to be(false)
    end
  end

  describe "functional test" do
    it "loads and unloads a string in the same order" do
      string = "abc"
      (0...string.length).each do |i|
        queue.enqueue(string[i])
        expect(queue.peek).to eq(string[0])
      end
      (0...string.length).each do |i|
        expect(queue.dequeue).to eq(string[i])
      end
    end
  end

end
