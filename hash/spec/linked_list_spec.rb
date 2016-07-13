require 'linked_list'

describe LinkedList do
  let(:ll) { LinkedList.new }
  let(:node1) { Node.new(1, nil) } 
  let(:node2) { Node.new(2, nil) } 
  let(:ll_with_one_node) { LinkedList.new(node1) }

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
  end

  describe '#insert' do

    let(:filled_ll) { ll.append(node1).append(node2)
      .append(node1).append(node2) }

    it 'raises ArgumentError if ll is empty and index is out-of-bound' do
      expect { ll.insert(node1, 2).head }.to raise_error(ArgumentError)
    end

    it "sets head to new node if ll is empty" do 
      expect(ll.insert(node1, 0).head).to eq(node1)
    end

    it "sets pointer of new node to the node that was in position 1" do
      #node1 node2 node1 node2
      filled_ll.insert(node1, 1)
      #node1 node1 node2 node1 node2
      expect(filled_ll.head.next.next).to eq(node2)
    end

    it "sets head.next to new node if ll is non-empty and index is 1" do
      filled_ll.insert(node1, 1)
      expect(filled_ll.head.next).to eq(node1)
    end
    # it "sets head to new node if ll is non-empty and index is 0" do
    #   filled_ll.insert(node2, 0)
    #   expect(filled_ll.head).to eq(node2)
    # end
  end
  #insert
  #read
  #delete 

end
