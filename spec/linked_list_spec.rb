require_relative '../src/linked_list'

RSpec.describe LinkedList do
  let(:list) { LinkedList.new }

  describe 'creating the list' do
    it 'begins with an empty list' do
      expect(list.head).to be_nil
    end
  end

  describe '#add_node' do
    let(:word) { 'cat' }
    let(:definition) { 'A being who meows.' }

    before { list.add_node(word, definition) }

    context 'empty list' do
      it 'makes the node the head of the list' do
        expect(list.head.word).to eq word
        expect(list.head.next).to be_nil
      end

      it 'makes the node the last node in the list' do
        expect(list.last.word).to eq word
      end
    end

    context 'non-empty list' do
      let(:new_word) { 'dog' }
      let(:new_def) { 'A being who is unapologetic in its odor.' }

      before { list.add_node(new_word, new_def) }

      it 'adds node to the list' do
        expect(list.head.next.word).to eq new_word
      end

      it 'makes the new node the last node' do
        expect(list.last.word).to eq new_word
      end
    end
  end

  describe '#read_node_at' do
    context 'empty list' do
      it 'returns nil' do
        expect(list.read_node_at(0)).to be_nil
      end
    end

    context 'single node list' do
      it 'returns list head' do
        list.add_node('blah', 'nah')
        expect(list.read_node_at(0).word).to eq list.head.word
      end
    end

    context 'multi-node list' do
      it 'returns the node at the position' do
        pos = 1
        (0..2).each do |i|
          list.add_node("word_#{i}", "definition_#{i}")
        end

        expect(list.read_node_at(pos).word).to eq "word_#{pos}"
      end
    end
  end

  describe '#insert_node_at' do
    before do
      (0..2).each do |i|
        list.add_node("word_#{i}", "definition_#{i}")
      end
    end

    it 'puts the node at the position in the list' do
      moved_right = list.read_node_at(1)
      word = 'Peter'
      definition = 'My mentor at VCS'

      list.insert_node_at(word, definition, 1)
      inserted_node = list.read_node_at(1)

      expect(inserted_node.word).to eq word
      expect(inserted_node.next).to eq moved_right
    end

    context 'position to insert is 0 (head of list)' do
      it 'inserts node at the head of list' do
        word = 'Sean'
        definition = 'Software engineer'
        list.insert_node_at(word, definition, 0)
        expect(list.head.word).to eq word
      end
    end

    context 'position to insert is beyond last position' do
      it 'puts the node at the end of the list' do
        new_word = 'yikes'
        new_def = 'An interjection'

        list.insert_node_at(new_word, new_def, 4)
        expect(list.last.word).to eq new_word
      end
    end
  end

  describe '#reverse' do
    it 'reverses the list' do
      (0..3).each do |i|
        list.add_node("word_#{i}", "definition_#{i}")
      end

      list.reverse

      expect(list.head.word).to eq 'word_3'
      expect(list.read_node_at(1).word).to eq 'word_2'
      expect(list.read_node_at(2).word).to eq 'word_1'
      expect(list.last.word).to eq 'word_0'
    end
  end
end