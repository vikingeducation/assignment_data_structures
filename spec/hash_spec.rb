require "hash"

describe HashTable do

  let(:table){HashTable.new}

  describe "#initialize" do
    it "should initialize with an empty buckets array" do
      expect(table.buckets).to eq([])
    end
  end

  describe "#insert" do
    it "updates the bucket with a new linked_list" do
      table.insert("apple", "a fruit")
      expect(table.buckets).not_to eq([])
    end

    it "only accepts strings as arguments" do
      expect{table.insert(1,2)}.to raise_error "Arguments must be a string"
    end
  end

  describe "#render_list" do
    it "calls the read_list method" do
      table.insert("aord", "dictionary")
      expect(table.buckets[0]).to receive(:read_list)
      table.render_list
    end
  end

  describe "#define" do
    it "calls the find methods" do
      table.insert("aord", "dictionary")
      expect(table.buckets[0]).to receive(:find)
      table.define("aord")
    end
  end

end
