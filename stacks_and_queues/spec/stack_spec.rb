# stacks_spec.rb
require 'stack'

describe 'Stack' do
  let(:stack) { Stack.new }
  let(:full_stack) { stack.push(1).push(2) }

  describe '#initialize' do
    it 'instantiates a Stack object' do
      expect(stack).to be_an_instance_of(Stack)
    end
  end

  describe '#push' do
    it 'pushes an element to the end of the stack' do
      expect{ stack.push(1) }.to change{ stack.stack.length }.by(1)
    end

    it 'returns the Stack object' do 
      expect(stack.push(1)).to eq(stack)
    end
  end

  describe '#pop' do
    it 'removes an element from the end of the stack' do 
      expect{ full_stack.pop }.to change{ full_stack.stack.length }.by(-1)
    end

    it 'returns last elem if stack is not empty' do 
       expect(full_stack.pop).to eq(2)
    end

    it 'returns nil if stack is empty' do
      expect(stack.pop).to eq(nil)
    end
  end

  describe '#peek' do
    it 'returns the top elem in the stack if stack is full' do
      expect(full_stack.peek).to eq(2)
    end

    it 'returns nil if stack is empty' do 
      expect(stack.peek).to eq(nil)
    end

    it 'does not change the stack' do
      expect{ full_stack.peek }.to change{ full_stack.stack.length }.by(0)
    end
  end
end
