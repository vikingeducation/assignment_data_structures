require 'spec_helper'

describe Node do
	let(:node){Node.new}

	it 'has a word' do
		expect do
			node.word
			node.word = 'foo'
		end.to_not raise_error
	end

	it 'has a definition' do
		expect do
			node.definition
			node.definition = 'foo'
		end.to_not raise_error
	end

	it 'has a next' do
		expect do
			node.next
			node.next = 'foo'
		end.to_not raise_error
	end
end