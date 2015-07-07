require_relative '../dictionary_storage.rb'

describe LinkedList do
  let(:llist){LinkedList.new}
  let(:defn) {"Test"}

  describe '#initialize' do

    it 'should have a nil head at start' do
      expect(llist.head).to be_nil
    end

    it 'should have a nil tail at start' do
      expect(llist.tail).to be_nil
    end

    it 'should have 0 nodes at start' do
      expect(llist.nodes).to eq(0)
    end

  end

  describe '#add_node' do
    let(:word) {"Test"}

    it 'should have one node after adding nodes' do
      llist.add_node(word, defn)
      expect(llist.nodes).to eq(1)
    end

    it 'should return the definition if there is a word' do
      llist.add_node(word, defn)
      expect(llist.search(word)).to eq("Test")
    end

    it 'should return a sorry message if word is not found' do
      word2 = "sldkfjsdlfkjsdlfkj"
      expect(llist.search(word2)).to eq("Sorry, #{word2} was not found")
    end
  end

  describe '#reverse' do

    it 'should properly reverse a 0 element list' do
      llist.reverse
      expect(llist.head).to be_nil
    end

    it 'should properly reverse a 1 element list' do
      llist.add_node("Word1", defn)
      llist.reverse
      expect(llist.head.word).to eq("Word1")
    end

    it 'should properly reverse a 2 element list' do
      llist.add_node("Word1", defn)
      llist.add_node("Word2", defn)
      llist.reverse
      expect(llist.head.next.word).to eq("Word1")
    end

    it 'should properly reverse a 3 element list' do
      llist.add_node("Word1", defn)
      llist.add_node("WordA", defn)
      llist.add_node("Word!", defn)
      llist.reverse
      expect(llist.head.next.next.word).to eq("Word1")
    end
  end

  describe "#insert_node" do

    it 'should properly put element at end of list if no arg' do
      llist.add_node("Word1", defn)
      llist.insert_node("Word2", defn)
      expect(llist.head.next.word).to eq("Word2")
    end

    it 'should properly put element at position if arg' do
      llist.add_node("Word1", defn)
      llist.add_node("Word3", defn)
      llist.insert_node("Word2", defn, 1)
      expect(llist.head.next.next.word).to eq("Word3")
    end
  end

end

describe HashTable do

  describe "#initialize" do

  end

end