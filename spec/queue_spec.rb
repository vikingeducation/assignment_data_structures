class MyQueue

  def initialize
    @collection = []
  end

  def dequeue
    dq_item = @collection[0]

    @collection = @collection.length == 1 ? [] : create_new_queue

    dq_item
  end

  def empty?
    @collection.length.zero?
  end

  def enqueue(item)
    @collection[entry_point] = item
  end

  def peek
    @collection[0]
  end


  private

  def create_new_queue
    new_collection = []

    @collection.length.times do |i|
      next if i.zero?
      new_collection[i-1] = @collection[i]
    end

    new_collection
  end

  def entry_point
    @collection.length
  end
end

RSpec.describe MyQueue do
  let(:q) { MyQueue.new }
  let(:item) { double('Item') }

  describe '#empty?' do
    it 'returns true when collection is empty' do
      expect(q.empty?).to be true
    end
  end

  describe '#enqueue' do
    it 'adds item to queue' do
      q.enqueue item
      expect(q.empty?).to be false
    end
  end

  describe '#peek' do
    before { q.enqueue item }

    it 'returns first item' do
      q.enqueue double('Another_item')
      expect(q.peek).to eq item
    end

    it 'does not remove the item' do
      q.peek
      expect(q.empty?).to be false
    end
  end

  describe '#dequeue' do
    before { q.enqueue item }

    it 'returns the first item' do
      expect(q.dequeue).to eq item
    end

    it 'removes the item from the stack' do
      q.dequeue
      expect(q.empty?).to be true
    end
  end

  it 'unloads a string in the same order' do
    str = 'cat'
    str.chars.each do |c|
      q.enqueue c
    end

    unpacked = ''
    until q.empty?
      unpacked += q.dequeue
    end

    expect(unpacked).to eq str
  end
end