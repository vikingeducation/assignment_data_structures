require 'linked_list'

describe LinkedList do

  describe '#initialize' do

    it 'only accepts a node object as an argument' do
      expect{LinkedList.new("String")}.to raise_error("Please only enter nodes as an argument")
    end

    it 'does not raise an error if node is argument' do
      node = double(:is_a? => true)
      expect{LinkedList.new(node)}.not_to raise_error
    end


  end








end