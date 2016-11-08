require 'queue'

describe Queue do
  let(:sample_queue){ Queue.new }
  let(:long_queue){ Queue.new([1,2,3,4,5,6]) }

  describe "#enqueue" do

    it 'adds an input to a blank queue' do
      sample_queue.enqueue(1)
      expect(sample_queue.queue[0]).to eq(1)
    end

    it 'adds an input to the end of a long queue' do
      long_queue.enqueue(7)
      expect(long_queue.queue[-1]).to eq(7)
    end
  end

  describe '#dequeue' do

    it 'shortens the queue' do
      long_queue.dequeue
      expect(long_queue.queue[5]).to be_nil
    end

    it 'removes the first value of the queue' do
      long_queue.dequeue
      expect(long_queue.queue[0]).to_not eq(1)
    end

    it 'returns the value from the beginning of the queue' do
      expect(long_queue.dequeue).to eq(1)
    end

  end

  describe '#peek' do
    it 'looks at beginning of queue' do
      expect(long_queue.peek).to eq(1)
    end
  end

  describe '#empty?' do
    it 'returns true if empty' do
      expect(sample_queue.empty?).to be true
    end
    it 'returns false if not empty' do
      expect(long_queue.empty?).to be false
    end
  end
end
