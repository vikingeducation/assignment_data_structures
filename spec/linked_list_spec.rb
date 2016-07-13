require 'linked_list'

describe LinkedList do

  let(:list){LinkedList.new}
  let(:node){Node.new("word", "definition", nil)}
  let(:list_with){LinkedList.new(node)}

  before do
    allow(list).to receive(:puts)
    allow(list_with).to receive(:puts)
  end

  describe '#initialize' do

    it 'only accepts a node object as an argument' do
      expect{LinkedList.new("String")}.to raise_error("Please only enter nodes as an argument")
    end

    it 'does not raise an error if node is argument' do
      expect{LinkedList.new(node)}.not_to raise_error
    end

    it "initializes with head set to nil" do
      expect(list.head).to be nil
    end
  end

  describe "#add_node_end" do
    it "calls add_first_node on an empty list" do
      expect(list).to receive(:add_first_node)
      list.add_node_end(node)
    end

    it "does not call add_first node on list containing a node" do
      expect(list).not_to receive(:add_first_node)
      list_with.add_node_end(node)
    end
  end

  describe "#read_node" do

    it "should return the node at index" do
      list_with.add_node(node, 1)
      expect(list_with.read_node(1)).to eq(node)
    end

  end

  describe "#reverse_list" do

    it "should change to a different head" do
      list_with.add_node_end(Node.new("second", "def", nil))
      list_with.reverse_list
      expect(list_with.head).not_to eq(node)
    end
  end

  describe "#find" do

    it "should find the definition of the word inputed" do
      list_with.add_node_end(Node.new("apple", "A fruit", nil))
      expect(list_with.find("apple")).to eq("A fruit")
    end

    it "should return nil if word is not found" do
      list_with.add_node_end(Node.new("apple", "A fruit", nil))
      expect(list_with.find("pear")).to be nil
    end
  end

end
