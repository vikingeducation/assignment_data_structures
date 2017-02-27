require "hash_table"
require "linked_list"

describe HashTable do
  let(:ht){ HashTable.new }
  let(:albergue){ ["albergue", "a place to sleep"] }
  let(:alemanha){ ["alemanha", "a country"] }
  let(:barco){ ["barco", "a vessel"] }


  describe "#initialize" do
    it "inits an empty 'buckets' array" do
      expect(ht.buckets).to eq([])
    end

    # it "inits the 'buckets' array with the given key, values" do
    #   kv = ["alemanha", "um país"]
    #   hash = HashTable.new([kv])
    #   lst = LinkedList.list(kv)
    #   expect(hash.buckets[0].child).to eq(lst.child)
    # end
  end

  describe "#hash" do
    it "returns an integer between 0 and 25 based on the word's first char" do
      expect(ht.hash("albergue")).to eq(0)
      expect(ht.hash("zebra")).to eq(25)
    end
  end

  describe "#append" do
    # adds a word to the appropriate bucket as a member at the end of the
    # linked list stored there.
    it "creates a new linked-list in that bucket If this is the first
    word for that letter" do
      k, v = albergue
      ht.append(k, v)
      expect(ht.buckets[0].child).to eq(LinkedList.list(albergue).child)
    end

    it "appends it to the existing list, if a word for the letter
    already exists." do
      ht.append(albergue[0], albergue[1])
      ht.append(alemanha[0], alemanha[1])
      expected = LinkedList.list(albergue, alemanha)
      expect(ht.buckets[0].child).to eq(expected.child)
    end
  end

  describe "#render_list" do
    it "returns number of list nodes at each bucket" do
      ht.append(albergue[0], albergue[1])
      ht.append(alemanha[0], alemanha[1])
      ht.append(barco[0], barco[1])
      expect(ht.render_list).to eq([["a", 2], ["b", 1]])
    end
  end

  describe "#define" do
    it "locates its definition in your hash table" do
      k, v = albergue
      ht.append(k, v)
      expect(ht.define(k)).to eq(v)
    end

    it "locates its definition if there are more than one words" do
      ht.append(albergue[0], albergue[1])
      ht.append(alemanha[0], alemanha[1])
      expect(ht.define(alemanha[0])).to eq(alemanha[1])
    end

    it "returns a friendly not found message if unfound" do
      expect(ht.define("non-existent")).to eq("not found")
    end

    it "outputs how many steps it took to locate the word" do
      ht.append(albergue[0], albergue[1])
      ht.append(alemanha[0], alemanha[1])
      expect{ht.define(alemanha[0])}.to output(/2 steps!/).to_stdout
    end
  end

end
