require 'linked_list'

describe LinkedList do

  let(:list){LinkedList.new}
  let(:node){double(:is_a? => true, :word => "Apple")}
  let(:list_with){LinkedList.new(node)}
  
  before do
    allow(list).to receive(:puts)
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
      list.add_node_end(node)
      expect(list).not_to receive(:add_first_node)
      list.add_node_end(node)
    end
  end









end
