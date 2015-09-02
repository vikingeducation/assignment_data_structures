require 'spec_helper'

describe HashTable do
	let(:dictionary) do
		h = HashTable.new
		path = "#{File.dirname(__FILE__)}/assets/dictionary.txt"
		File.open(path, 'r') do |f|
			f.readlines.each do |l|
				word = l.gsub(/\s/, '')
				definition = "A thing that does what a #{word} does"
				h.insert(word, definition) if word =~ /^[a-zA-Z]+$/
			end
		end
		h
	end

	let(:hash){HashTable.new}

	it 'allows many words to be inserted' do
		expect {dictionary}.to_not raise_error
	end

	describe '#hash' do
		it 'accepts a string as a parameter' do
			expect do 
				hash.hash('word')
			end.to_not raise_error
		end

		it 'raises an error if the string is not a word' do
			expect do 
				hash.hash('!@#$')
			end.to raise_error("Not a word")
		end

		it 'returns a number 0-25 based on the 1st letter of the string' do
			expect(hash.hash('apple')).to eq(0)
		end
	end

	describe '#insert' do
		before do
			hash.insert('apple', 'a tasty fruit')
		end

		it 'calls hash' do
			expect(hash).to_not receive(:hash).with('apple')
		end

		it 'results in a word being added to the appropriate linked list' do
			expect(hash.define('apple')).to eq('a tasty fruit')
		end
	end

	describe '#render_list' do
		it 'returns a string' do
			expect(hash.render_list).to be_kind_of(String)
		end
	end

	describe '#define' do
		before do
			hash.insert('apple', 'a tasty fruit')
		end

		it 'takes a string as a parameter' do
			expect do
				hash.define('word')
			end.to_not raise_error
		end

		it 'returns the definition of a word when found' do
			expect(hash.define('apple')).to eq('a tasty fruit')
		end

		it 'returns a not found message when no word was found' do
			expect(hash.define('zebra')).to eq('Not found')
		end
	end

	describe '#path' do
		it 'outputs a string of the operation path performed on the hash table' do
			5.times {hash.insert('apple', 'a tasty fruit')}
			expect(hash.path).to be_kind_of(String)
		end
	end

	describe '#tick' do
		it 'counts to 2 when a word is inserted' do
			hash.insert('apple', 'a tasty fruit')
			expect(hash.tick).to eq(2)
		end

		it 'counts to 1 plus the appropriate index of the linked list' do
			5.times {hash.insert('apple', 'a tasty fruit')}
			hash.insert('ant', 'an insect')
			hash.define('ant')
			expect(hash.tick).to eq(7)
		end
	end
end


