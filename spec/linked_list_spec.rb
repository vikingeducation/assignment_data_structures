
require 'linked_list'

describe LinkedList do
  let(:list) { LinkedList.new }

  describe '#add_node' do
    it 'adds a node' do
      expect(list.length).to eq(0)
      list.add_node('foo', 'bar')
      expect(list.length).to eq(1)
    end
  end

  describe '#length' do
    it 'returns number of nodes of the list' do
      desired_length = 3
      expect(list.length).to eq(0)
      desired_length.times { list.add_node('foo', 'bar') }
      expect(list.length).to eq(3)
    end
  end

  describe '#each' do
    it 'returns an enumberator if no block given' do
      expect(list.each.class).to eq(Enumerator)
    end

    it 'yields each node in the list to a block' do
      desired_length = 3
      desired_length.times { list.add_node('', '') }
      list.each { |element| expect(element.class).to eq(Node) }
    end
  end

  describe '#remove_node' do
    it 'removes the node at the given index' do
    end
  end

  describe 'Enumerable methods' do
    it 'responds to Enumerable methods'
  end

end
