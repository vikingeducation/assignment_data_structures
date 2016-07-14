require 'hash_table'

describe HashTable do 
  let(:ht) { HashTable.new }

  describe '#hash' do 
    it "returns 1 for apple" do 
      expect(ht.hash("apple")).to eq(0)
    end

    it "returns 25 for zebra" do 
      expect(ht.hash("zebra")).to eq(25)
    end
  end

  describe '#insert' do
    it "inserts 'hannah' into the 7th linked list" do 
      ht.insert('hannah')
      expect(ht.buckets[7].head).to eq('hannah')
    end

  end
end