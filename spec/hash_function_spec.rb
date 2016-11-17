require 'hash_function'

describe HashFunction do
  let(:new_hash){ HashFunction.new }

  describe "#insert" do

    it 'inserts a word' do
      new_hash.insert("cat")
      expect(new_hash.define("cat")).to eq("cat")

    end
  end

  describe '#define' do

    it 'gives the definition of a word' do
      new_hash.insert("apple")
      new_hash.insert("ant", "ant")
      expect(new_hash.define("ant")).to eq("ant")
    end

    it 'gives an error if word is not found' do
      new_hash.insert("apple")
      new_hash.insert("ant", "ant")
      expect{new_hash.define("aardvark")}.to raise_error("word not found")
    end

  end

end
