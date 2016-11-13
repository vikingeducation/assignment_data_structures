require 'hash_table'

describe HashTable do

  let(:hash_table) { HashTable.new }

  describe '#define' do 

    before do 
      hash_table.insert("cat", "a pet")
      hash_table.insert("dog", "a better pet")
      hash_table.insert("rooster", "not a dog")
    end

    it 'finds the definition of a word' do 
      expect(hash_table.define("cat")).to eq("a pet")
      expect(hash_table.define("dog")).to eq("a better pet")
      expect(hash_table.define("rooster")).to eq("not a dog")
    end

    it 'returns a friendly response if word not present' do 
      expect(hash_table.define("chicken")).to eq("Definition for chicken not found. Sorry!")
    end

    it 'finds the definition of a word in a long-ish linked list' do 
      hash_table.insert("chicken", "a motherclucker")
      hash_table.insert("cow", "mmm beef")
      expect(hash_table.define("cow")).to eq("mmm beef")
    end

  end

end