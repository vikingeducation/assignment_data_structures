require 'linked_list'

describe LinkedList do

  let(:l){LinkedList.new}
  
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

    it 'removes link from previous node and changes it to next node' do
      


  end










end