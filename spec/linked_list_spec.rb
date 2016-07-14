require 'linked_list'

describe LinkedList do


  let(:l){LinkedList.new}
  before do 
    allow(l).to receive(:puts)
  end
  describe '#add_first_node' do

    it 'should become the head of the list' do
      l.add_first_node('cat', 'definition')
      expect(l.head.word).to eq('cat')
    end

    it 'should become the last node on the list' do
      l.add_first_node('cat', 'feline')
      expect(l.last.definition).to eq('feline')
    end

    it 'should not have a next' do
      l.add_first_node('cat', 'feline')
      expect(l.head.next).to be_nil
    end

  end

  describe '#add_node_to_end' do

    it 'should call add_first_node if the list is empty' do
      expect(l).to receive(:add_first_node)
      allow(l).to receive(:puts)
      l.add_node_to_end('cat', 'feline')
    end

    it "should become the last word" do
      allow(l).to receive(:puts)
      l.add_first_node('cat', 'feline')
      l.add_node_to_end('dog', 'canine')
      expect(l.last.word).to eq('dog')
    end

    it "for second, creates a link from head to new node" do
      allow(l).to receive(:puts)
      l.add_first_node('cat', 'feline')
      l.add_node_to_end('dog', 'canine')
      expect(l.head.next.word).to eq('dog')
    end

    it "for more nodes, it creates a link from old last to new node" do
      allow(l).to receive(:puts)
      l.add_first_node('cat', 'feline')
      l.add_node_to_end('dog', 'canine')
      l.add_node_to_end('cow', 'bovine')
      expect(l.head.next.next.word).to eq('cow')
    end


  end

  describe '#remove_node' do
    let(:l){LinkedList.new(Node.new('cat', 'feline'))}


    it 'removes link from previous node and changes it to next node' do
      l.add_node_to_end('dog', 'canine')
      l.add_node_to_end('cow', 'bovine')
      l.remove_node(1)
      expect(l.head.next.word).to eq('cow')
    end

    it 'deletes a 2nd node from a chain of only 2 nodes' do
      l.add_node_to_end('dog', 'canine')
      l.remove_node(1)
      expect(l.head.next).to be_nil
    end

    it 'removes the first node when passed an index of 0' do 
      l.remove_node(0)
      expect(l.head).to be_nil
    end
  end

  describe '#read' do

    let(:l){LinkedList.new(Node.new('cat', 'feline'))}
    
    it 'should read the word and definition at 0' do
      expect(l.read(0)).to eq(['cat','feline'])
    end

    it 'should read the word and definition of the given index' do
      l.add_node_to_end('dog', 'canine')
      expect(l.read(1)).to eq(['dog', 'canine'])
    end

  end

  describe '#add_node_at_index' do

    let(:l){LinkedList.new(Node.new('cat', 'feline'))}

    it 'should insert the node at the head if argument is 0' do
      l.add_node_at_index(0, 'dog', 'canine')
      expect(l.head.word).to eq('dog')
    end

    it 'should insert the node at the given index' do
      l.add_node_to_end('dog', 'canine')
      l.add_node_to_end('cow', 'bovine')
      l.add_node_at_index(2, 'hawk', 'bird')
      expect(l.scan(2).word).to eq('hawk')
    end
  end

  describe "#reverse" do 
    let(:l){LinkedList.new(Node.new('cat', 'feline'))}

    it 'reverses the order of the nodes' do 
      l.add_node_to_end('dog', 'canine')
      l.add_node_to_end('cow', 'bovine')
      l.add_node_to_end('mouse', 'rodent')
      l.reverse
      expect(l.head.word).to eq('mouse')
      expect(l.read(1)).to eq(['cow', 'bovine'])
      expect(l.read(2)).to eq(['dog', 'canine'])
      expect(l.last.word).to eq('cat')
    end

  end

  describe '#count' do
    let(:l){LinkedList.new(Node.new('cat', 'feline'))}
    it 'counts number of nodes in list' do
      expect(l.count).to eq(1)
    end

    it 'counts number nodes in list when list is greater than 1' do
      l.add_node_to_end('dog', 'canine')
      l.add_node_to_end('cow', 'bovine')
      expect(l.count).to eq(3)
    end

  end

  describe '#define_word' do

    let(:l){LinkedList.new(Node.new('cat', 'feline'))}

    it 'should return the search term if found' do
      l.add_node_to_end('dog', 'canine')
      expect(l.define('dog')).to eq('canine')
    end
  end








end