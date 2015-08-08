require 'linkedlist'

describe LinkedList do

  describe "#initialize" do
    it "starts with a nil @head attribute" do
      expect( subject.head ).to be_nil
    end

    it "starts with a nil @last attribute" do
      expect( subject.last ).to be_nil
    end

    it "allows first node to be set on creation" do
      ll = LinkedList.new("test")      
      expect( ll.head ).to eq("test")
      expect( ll.last ).to eq("test")
    end
  end


  describe "#append" do
    before(:each) do
      subject.append("dixie", "a fat cat")
    end

    it "adds a node an empty list" do
      expect( subject.find(0).word ).to eq("dixie")
      expect( subject.find(0).definition ).to eq("a fat cat")
      expect( subject.head.word ).to eq("dixie")
      expect( subject.last.word ).to eq("dixie")
    end

    it "adds a node to a non-empty list" do
      subject.append("oreo", "an old cat")
      expect( subject.find(0).word ).to eq("dixie")
      expect( subject.find(1).word ).to eq("oreo")
      expect( subject.head.word ).to eq("dixie")
      expect( subject.last.word ).to eq("oreo")
    end
  end


  describe "#insert" do
    before(:each) do
      subject.insert("dixie", "a fat cat", 0)
    end

    it "inserts a node in an empty list" do
      expect( subject.find(0).word ).to eq("dixie")
      expect( subject.find(0).definition ).to eq("a fat cat")
      expect( subject.head.word ).to eq("dixie")
      expect( subject.last.word ).to eq("dixie")
    end

    it "inserts a node in a non-empty list" do
      subject.insert("oreo", "an old cat", 1)
      expect( subject.find(0).word ).to eq("dixie")
      expect( subject.find(1).word ).to eq("oreo")
      expect( subject.head.word ).to eq("dixie")
      expect( subject.last.word ).to eq("oreo") 
    end

    it "inserts in front of an existing node" do
      subject.insert("oreo", "an old cat", 0)
      expect( subject.find(0).word ).to eq("oreo")
      expect( subject.find(1).word ).to eq("dixie")
      expect( subject.head.word ).to eq("oreo")
      expect( subject.last.word ).to eq("dixie") 
    end

    it "raises an error if insert index out of range" do
      expect { subject.insert("bad", "a bad word", 2) }.to raise_error("Index out of range")
    end
  end


  describe "#reverse" do

    it "reverses the list, linking each item to the item that linked to it" do
      subject.append("1", "")
      subject.append("2", "")
      subject.append("3", "")
      subject.reverse
      expect( subject.find(0).word ).to eq("3")
      expect( subject.find(2).word ).to eq("1")
      expect( subject.find(2).next ).to be_nil      
    end
    
  end
end