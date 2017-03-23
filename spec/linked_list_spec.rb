require "linked_list"

describe LinkedList do 

  let(:list){ LinkedList.new }

  describe "#initialize" do 
    it "should set an instance variable @head to nil" do 
      expect(list.head).to eq(nil)
    end

    it "should set an instance variable @last_node to nil" do 
      expect(list.last_node).to eq(nil)
    end
  end

  describe "#add_first_node" do 
    before do 
      list.add_first_node("Plato", "Greek Philospher")
    end

    it "sets the head instance variable to a new Struct" do 
      expect(list.head).to be_a(Struct)
    end

    it "sets the last node to the first node" do 
      expect(list.last_node).to eq(list.head)
    end
  end

  describe "#add_last_node" do 
    it "should add a new node as the last node" do 
      list.add_first_node("Socrates", "Greek Philosopher")
      list.add_last_node("Simone", "French Philosopher")            
      expect(list.last_node.word).to eq("Simone")
    end
  end
   
  describe "#read_node" do 
    before do 
      list.add_first_node("Plato", "Greek Philosopher")
      list.add_last_node("Simone", "French Philosopher")      
    end

    it "returns the 2nd node if index of 1 is passed in" do 
      expect(list.read_node(1)).to eq(Node.new("Simone", "French Philosopher"))
    end

    it "returns the 3rd node if index of 2 is passed in" do 
      list.add_last_node("Aristotle", "Greek Philosopher")
      expect(list.read_node(2)).to eq(Node.new("Aristotle", "Greek Philosopher"))
    end

    it "returns nil if there is no node present" do 
      expect(list.read_node(2)).to eq(nil)
    end
  end

  describe "#add_node" do 
    it "calls add_last_node if no index value is passed" do 
      expect(list).to receive(:add_last_node)
      list.add_node("dog", "domesticated animal")
    end

    it "raises an argument error if index argument is negative" do 
      expect{ list.add_node("cat", "meows", -1) }.to raise_error(ArgumentError)
    end

    it "sets the first node to the new node if index argument is 0" do 
      list.add_node("orange", "fruit", 0)
      list.add_node("peach", "fruit", 0)
      expect(list.head.word).to eq("peach")
    end

    it "replaces the 1st node with a new node" do 
      list.add_node("orange", "fruit", 0)
      list.add_node("banana", "fruit", 1) 
      list.add_node("apple", "fruit", 1)
      expect(list.read_node(1).word).to eq("apple")
    end
  end

  describe "#remove node" do 
    before do 
      list.add_node("dog", "barks", 0)
      list.add_node("tiger", "roars", 1)
      list.add_node("cat", "meows", 2)
      list.remove_node(1)      
    end
    
    it "sets the previous node's pointer to the selected node's next node" do 
      expect(list.head.next_node.word).to eq("cat")
    end

    it "sets the new node of the chosen index to the next node" do
      expect(list.read_node(1).word).to eq("cat") 
    end
  end

  describe "#reverse" do 
    before do 
      list.add_node("dog", "barks", 0)
      list.add_node("tiger", "roars")
      list.add_node("cat", "meows")      
    end

    it "sets the tail as the head" do 
      list.reverse(list.head)
      expect(list.head.word).to eq("cat")          
    end

    it "sets the head as the tail" do 
      list.reverse(list.head)
      expect(list.last_node.word).to eq("dog")      
    end

    it "points the new head to the 2nd last node" do 
      list.reverse(list.head)
      expect(list.head.next_node.word).to eq("tiger")
    end

    it "points the 'tiger' node to the 'dog' node" do 
      list.reverse(list.head)
      expect(list.read_node(1).next_node.word).to eq("dog")
    end
  end

end






