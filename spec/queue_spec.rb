require 'queue'

describe Queue do
  let(:sample_queue){ Queue.new }
  let(:long_queue){ Queue.new([1,2,3,4,5,6]) }

  describe "#push_to_queue" do

    it 'pushs an input to the end of the queue' do
      sample_queue.push_to_queue(1)
      expect(sample_queue.queue[0]).to eq(1)
    end

    it 'pushs an input to the end of a long queue' do
      long_queue.push_to_queue(7)
      expect(long_queue.queue[6]).to eq(7)
    end
  end

  describe '#pop_from_queue' do

    it 'removes from the end of the queue' do
      long_queue.pop_from_queue
      expect(long_queue.queue[5]).to be_nil
    end

    it 'returns the value from the end of the queue' do
      expect(long_queue.pop_from_queue).to eq(6)
    end

  end 

  describe '#peek' do 
    it 'looks at top of queue' do
      expect(long_queue.peek).to eq(6)
    end
  end
end
