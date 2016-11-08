require 'rspec'
require 'queue'

describe Queue do
  let(:q) { Queue.new }
  describe '#new' do
    it "initializes empty" do
      expect(q.empty?).to be true
    end
  end
  describe '#enqueue' do
    it "adds an element to the end of the queue" do
      q.enqueue("data")
      expect(q.peek).to eq("data")
      expect(q.tail.data).to eq("data")
    end
  end

  describe "#dequeue" do
    it "removes an element from the beginning of the queue" do
      q.enqueue("first")
      q.enqueue("second")
      expect(q.dequeue).to eq("first")
    end
  end

  describe "#peek" do
    it "peeks at the start of the queue" do
      expect(q.peek).to be_nil
      q.enqueue("first")
      q.enqueue("second")
      expect(q.peek).to eq("first")
    end
  end
end
