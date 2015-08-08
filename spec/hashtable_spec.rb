require 'hashtable'

describe Hashtable do

  describe "#hash(word)" do
    it "returns an index based on the first letter of the word" do
      expect( subject.hash("golf") ).to eq(6)
    end
  end

  describe "insert" do
    it "adds a word and definition to the hash table" do
      subject.insert("dixie", "a fat cat")
      expect( subject.define("dixie") ).to eq("a fat cat")
    end

    it "adds multiple words with the same first letter" do
      subject.insert("dixie", "a fat cat")
      subject.insert("doug", "a cartoon character")
      expect( subject.define("dixie") ).to eq("a fat cat")
      expect( subject.define("doug") ).to eq("a cartoon character")
    end
  end

  describe "#define" do
    it "raises an error if a word isn't found" do
      expect { subject.define("hotel") }.to raise_error("hotel not found")
    end
  end
  
end