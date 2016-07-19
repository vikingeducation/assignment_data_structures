# node_spec.rb
require 'node'

describe Node do
  let(:next_next_node) { Node.new(3, nil) }
  let(:next_node){ Node.new(2, nil) }
  let(:node){ Node.new(1, next_node) }

  describe '#initialize' do
    it 'initializes an instance of Node' do
      expect(node).to be_an_instance_of(Node)
    end
  end

  describe '#data' do
    it 'returns the correct data' do
      expect(node.data).to eq(1)
    end

    it 'reassigns data when reset' do
      node.data = 2
      expect(node.data).to eq(2)
    end
  end

  describe '#next' do
    it 'returns the correct next node when it is nil' do
      expect(next_node.next).to eq(nil)
    end

    it 'returns the correct next node' do
      expect(node.next).to eq(next_node)
    end

    it 'reassigns next when reset' do
      next_node.next = next_next_node
      expect(next_node.next).to eq(next_next_node)
    end
  end
end

