require 'linked_list'
require 'node'

describe LinkedList do
  let(:new_list){ LinkedList.new }
  let(:dog_node){ Node.new("dog", "dog", nil) }
  let(:cat_node){ Node.new("cat", "cat", nil) }
  let(:bird_node){ Node.new("bird", "bird", nil) }

  describe '#add_node' do

    it 'adds node to empty list' do
      expect(new_list.add_node(dog_node))
    end

  end


end
