require 'rspec'
require 'hash_table'

describe LinkedList do
  let(:ll) { LinkedList.new }

  describe '#new' do
    it 'initializes as empty' do
      expect(ll.empty?).to be true
    end
  end

  describe '#read' do
    it 'returns the data at a particular index in the list or nil' do
      ll.add_node('first')
      ll.add_node('second')
      ll.add_node('third')
      expect(ll.read(1)).to eq('second')
      expect(ll.read(4)).to be_nil
    end
  end

end