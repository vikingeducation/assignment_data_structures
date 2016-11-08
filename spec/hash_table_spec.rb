require 'rspec'
require 'hash_table'

describe LinkedList do
  let(:ll) { LinkedList.new }
  let(:ll_noded) do
    ln = LinkedList.new
    ln.add_node('first')
    ln.add_node('second')
    ln.add_node('third')
    ln
  end

  describe '#new' do
    it 'initializes as empty' do
      expect(ll.empty?).to be true
    end
  end

  describe '#read' do
    it 'returns the data at a particular index in the list or nil' do
      expect(ll_noded.read(1)).to eq('second')
      expect(ll_noded.read(4)).to be_nil
    end
  end

  describe '#insert_node' do
    it 'places a node at specified index' do
      ll_noded.insert_node(1, 'first and a half')
      expect(ll_noded.read(1)).to eq('first and a half')
    end
  end

  describe '#reverse' do
    it 'flips the order of this list, so the "head" and the "tail" are swapped and all the links point in opposite directions' do
      ll_noded.reverse
      expect(ll_noded.read(0)).to eq('third')
      expect(ll_noded.read(1)).to eq('second')
      expect(ll_noded.read(2)).to eq('first')
    end
  end

end
