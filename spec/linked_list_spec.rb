require 'linked_list'
require 'node'

describe LinkedList do
  let(:new_list){ LinkedList.new }
  let(:dog_node){ Node.new("dog", "dog", nil) }
  let(:cat_node){ Node.new("cat", "cat", nil) }
  let(:bird_node){ Node.new("bird", "bird", nil) }

  describe '#add_node' do

    it 'adds node to empty list' do
      new_list.add_node(dog_node)
      expect(new_list.tail).to eq(dog_node) 
    end

    it 'adds a node to empty list, and makes it the head' do
      new_list.add_node(dog_node)
      expect(new_list.head).to eq(dog_node) 
    end

    it 'adds node to a list with an existing head and tail' do 
      new_list.add_node(dog_node)
      new_list.add_node(cat_node)
      expect(new_list.tail).to eq(cat_node)
    end
  end

  describe '#access' do
    it "access data in a arbitrary node in the list" do 
      new_list.add_node(dog_node)
      new_list.add_node(cat_node)
      new_list.add_node(bird_node)
      expect(new_list.access(1)).to eq(["cat", "cat"])
    end
  end

  describe "#add_node_with_index" do
    it "adds a node at a given index" do
      new_list.add_node(dog_node)
      new_list.add_node(bird_node)
      new_list.add_node_with_index(cat_node,1)
      expect(new_list.access(1)).to eq(["cat", "cat"])
    end
  end


end
