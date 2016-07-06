require_relative "hash_table.rb"
describe HashTable do
  describe "#initialize" do
    it "returns a HashTable" do
      expect(subject).to be_a(HashTable)
    end
    it "default has a empty array of 0..25 indices" do
      expect(subject.buckets.size).to eq(26)
    end
  end

  describe "#insert" do
    it "inserts words with different staring letter" do
      subject.insert("apple", "def1")
      subject.insert("ball", "def2")
      expect(subject.define("ball")).to be_truthy
    end
    it "inserts words with same staring letter" do
      subject.insert("apple", "def1")
      subject.insert("almonds", "def2")
      expect(subject.define("almonds")).to be_truthy
    end
    it "inserts words starting with a at index 0" do
      subject.insert("apple", "def1")
      expect(subject.define("apple")).to eq(subject.buckets[0].head)
    end
    it "inserts words starting with j at index 9" do
      subject.insert("joker", "def1")
      expect(subject.define("joker")).to eq(subject.buckets[9].head)
    end
    it "inserts words starting with z at index 25" do
      subject.insert("zebra", "def1")
      expect(subject.define("zebra")).to eq(subject.buckets[25].head)
    end
  end

  describe "#define" do
    it "finds definition when only 1 word is in the bucket" do
      subject.insert("ball", "def2")
      expect(subject.define("ball")).to be_truthy
    end
    it "finds definition when more than 1 words in the bucket" do
      subject.insert("ball", "def2")
      subject.insert("basketball", "def2")
      expect(subject.define("basketball")).to be_truthy
    end
    it "returns nil, if cannot find the word if bucket is empty" do
      expect(subject.define("apple")).to eq(nil)
    end
    it "returns nil, if cannot find the word if bucket is not empty" do
      subject.insert("ball", "def2")
      subject.insert("basketball", "def2")
      expect(subject.define("baseball")).to eq(nil)
    end
  end

end