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

  end

  #append
  #insert
  #read
  #delete 

end
