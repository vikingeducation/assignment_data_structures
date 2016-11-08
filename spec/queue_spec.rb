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
      expect(q.head.data).to eq("data")
      expect(q.tail.data).to eq("data")
    end
  end
end
