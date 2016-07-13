require 'linked_list'

describe LinkedList do
  let(:ll) { LinkedList.new }
  let(:node1) { Node.new(1, nil) } 
  let(:node2) { Node.new(2, nil) } 
  let(:node3) { Node.new(3, nil) } 
  let(:ll_with_one_node) { LinkedList.new(node1) }
  let(:filled_ll) { ll.append(node1).append(node2).append(node3) }

  describe '#intialize' do 
    it "instantiates LinkedList" do 
      expect(ll).to be_an_instance_of(LinkedList)
    end

    it "pre-allocates space for first node" do
      expect(ll.head).to eq(nil)
    end

    it 'sets last to head' do
      expect(ll.last).to eq(nil)
    end

    it 'sets the node passed as the first and last node' do
      expect(ll_with_one_node.head).to eq(node1)
    end
  end

  describe '#append' do

    it 'changes the pointer of the current last node to the new last node' do
      last_node = ll_with_one_node.last  
      ll_with_one_node.append(node2)
      expect(last_node.next).to eq(node2)
    end

    it 'sets new last node is the new ' do
      ll_with_one_node.append(node2)
      expect(ll_with_one_node.last).to eq(node2)
    end

    it 'sets head and last to node if LL starts off empty' do
      ll.append(node1)
      expect(ll.head).to eq(node1)
      expect(ll.last).to eq(node1)
    end

    it "appends multiple nodes" do
      ll.append(node1).append(node2).append(node3)
      expect(ll.head.next.next).to eq(node3)
    end
  end

  describe '#insert' do

    it "sets head to new node if ll is empty" do 
      expect(ll.insert(node1, 0).head).to eq(node1)
    end

    it "sets pointer of new node to the node that was in position 1" do
      filled_ll.insert(node3, 1)
      expect(filled_ll.head.next.next).to eq(node2)
    end

    it "sets head.next to new node if ll is non-empty and index is 1" do
      filled_ll.insert(node3, 1)
      expect(filled_ll.head.next).to eq(node3)
    end
  end

  describe "#read" do
    it 'returns the first node if no index is provided' do
      expect(filled_ll.read).to eq(node1)
    end

    it 'returns the second node if index is 1' do
      expect(filled_ll.read(1)).to eq(node2)
    end

    it 'returns the third node if index is 2' do
      expect(filled_ll.read(2)).to eq(node3)
    end
  end
  
  #delete 

end
