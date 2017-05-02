require_relative '../src/hash_table'

RSpec.describe HashTable do
  let(:table) { HashTable.new }

  describe '#hash' do
    it 'returns an index based on first letter in word' do
      expect(table.hash('cat')).to eq 2
      expect(table.hash('dog')).to eq 3
      expect(table.hash('Zeplin')).to eq 25
    end
  end

  describe '#insert' do
    let(:word) { 'cat' }
    let(:definition) { 'meow' }

    context 'bucket is empty' do
      let(:index) { table.hash(word) }

      before { table.insert(word, definition) }

      it 'creates a linked list' do
        expect(table.buckets[index]).to be_a_kind_of LinkedList
      end

      it 'adds word' do
        expect(table.buckets[index].head.word).to eq 'cat'
      end
    end

    context 'bucket has a list in it' do
      it 'adds the word' do
        table.insert('cog', 'machine part')
        table.insert(word, definition)

        index = table.hash(word)
        expect(table.buckets[index].last.word).to eq word
      end
    end
  end
end