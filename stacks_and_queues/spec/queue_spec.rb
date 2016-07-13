require 'queue'

describe MyQueue do 
  let(:queue) { MyQueue.new }
  let(:full_queue) { queue.enqueue(1).enqueue(2) }

  describe '#initialize' do
    it 'instantiates a MyQueue object' do
      expect(queue).to be_an_instance_of(MyQueue)
    end
  end

  describe '#enqueue' do
    it 'adds an element to the end of the queue' do
      expect{ queue.enqueue(1) }.to change{ queue.queue.length }.by(1)
    end

    it 'returns the MyQueue object' do 
      expect(queue.enqueue(1)).to eq(queue)
    end
  end

  describe '#dequeue' do
    it 'removes an element from the front of the queue' do 
      expect{ full_queue.dequeue }.to change{ full_queue.queue.length }.by(-1)
    end

    it 'returns first elem if queue is not empty' do 
       expect(full_queue.dequeue).to eq(1)
    end

    it 'returns nil if stack is empty' do
      expect(stack.pop).to eq(nil)
    end
  end

  # describe '#peek' do
  #   it 'returns the top elem in the stack if stack is full' do
  #     expect(full_stack.peek).to eq(2)
  #   end

  #   it 'returns nil if stack is empty' do 
  #     expect(stack.peek).to eq(nil)
  #   end

  #   it 'does not change the stack' do
  #     expect{ full_stack.peek }.to change{ full_stack.stack.length }.by(0)
  #   end
  # end
end