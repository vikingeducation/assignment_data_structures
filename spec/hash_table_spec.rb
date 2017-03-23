require "hash_table"

describe HashTable do 

  let(:h){ HashTable.new }

  describe "#initialize" do 
    it "sets an instance variable @buckets to an empty array" do 
      expect(h.buckets).to eq([])
    end
  end

  describe "#hash" do 
    it "returns 0 for the word apple" do 
      expect(h.hash("apple")).to eq(0)
    end

    it "returns 1 for the word banana" do 
      expect(h.hash("banana")).to eq(1)
    end
  end

  describe "#insert" do 
    before do 
      h.insert("apple")
    end

    it "creates a new linked list if it's the first word" do 
      expect(h.buckets[0]).to be_an_instance_of(LinkedList)
    end

    it "appends a new word on to an existing list" do 
      h.insert("apricot")
      expect(h.buckets[0].read_node(1).word).to eq("apricot")
    end
  end

  describe "#render_list" do 

    it "displays that there are no words if bucket is empty" do 
      h.instance_variable_set(:@buckets, [nil])    
      expect{h.render_list}.to output("No words in this bucket!\n").to_stdout
    end
  end

  describe "#define" do 
    it "displays the definition of a word" do 
      h.insert("apple", "fruit")
      expect(h.define("apple")).to eq("fruit")
    end

    it "displays word not found message" do 
      expect{h.define("apple")}.to output("Word is not found!\n").to_stdout
    end
  end

end








