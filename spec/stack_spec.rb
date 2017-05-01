class MyStack

  def initialize
    @collection = []
    @end_index = -1
  end

  def empty?
    @end_index < 0
  end

  def peek
    @collection[@end_index]
  end

  def pop
    @end_index -= 1
    @collection[@end_index + 1]
  end

  def push(item)
    @collection[@end_index + 1] = item
    @end_index += 1
  end
end

RSpec.describe MyStack do
  let(:stack) { MyStack.new }
  let(:item)  { double('Item') }

  describe '#empty?' do
    it 'returns true when stack is empty' do
      expect(stack.empty?).to be true
    end
  end

  describe '#push' do
    it 'adds item to stack' do
      stack.push item
      expect(stack.empty?).to be false
    end
  end

  describe '#peek' do
    before { stack.push item }

    it 'returns top-most item' do
      expect(stack.peek).to eq item
    end

    it 'does not remove the item from stack' do
      stack.peek
      expect(stack.empty?).to be false
    end
  end

  describe 'pop' do
    before { stack.push item }

    it 'returns the top-most item' do
      stack.push item
      expect(stack.pop).to eq item
    end

    it 'removes the item from the stack' do
      stack.pop
      expect(stack.empty?).to be true
    end
  end

  it 'can reverse a string' do
    str = 'cat'
    expected_string = 'tac'

    str.chars.each do |c|
      stack.push c
    end

    reversed_string = ''
    3.times do
      reversed_string += stack.pop
    end

    expect(reversed_string).to eq expected_string
  end
end
